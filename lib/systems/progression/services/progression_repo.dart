import 'dart:convert';

import 'package:sqflite/sqflite.dart';
import 'package:stupig_proto/systems/progression/models.dart';
import 'package:stupig_proto/systems/progression/services/db_service.dart';

class ProgressionRepository {
  final DatabaseHelper _databaseHelper;

  ProgressionRepository(this._databaseHelper);

  // Import initial data from JSON
  Future<void> importInitialData(String jsonString) async {
    final db = await _databaseHelper.database;
    final Map<String, dynamic> jsonData = json.decode(jsonString);
    final List<dynamic> themesData = jsonData['themes'];

    await db.transaction((txn) async {
      for (var themeData in themesData) {
        // Insert theme
        int themeId = await txn.insert('themes', {
          'name': themeData['name'],
        });

        // Insert subthemes
        for (var subthemeData in themeData['subthemes']) {
          int subthemeId = await txn.insert('subthemes', {
            'theme_id': themeId,
            'name': subthemeData['name'],
          });

          // Insert concepts
          for (var conceptData in subthemeData['concepts']) {
            int conceptId = await txn.insert('concepts', {
              'subtheme_id': subthemeId,
              'name': conceptData['name'],
              'rarity': conceptData['rarity'],
              'description': conceptData['description'],
            });

            // Initialize user progress
            await txn.insert('user_progress', {
              'concept_id': conceptId,
              'unlocked': conceptData['unlocked'] ? 1 : 0,
              'unlock_date': conceptData['unlocked'] ? DateTime.now().toIso8601String() : null,
            });
          }
        }
      }
    });
  }

  // Load themes with all related data
  Future<List<Theme>> loadThemes() async {
    final db = await _databaseHelper.database;

    final List<Map<String, dynamic>> themesData = await db.rawQuery('''
      SELECT 
        t.id as theme_id,
        t.name as theme_name,
        s.id as subtheme_id,
        s.name as subtheme_name,
        c.id as concept_id,
        c.name as concept_name,
        c.rarity,
        c.description,
        up.unlocked,
        up.unlock_date
      FROM themes t
      LEFT JOIN subthemes s ON s.theme_id = t.id
      LEFT JOIN concepts c ON c.subtheme_id = s.id
      LEFT JOIN user_progress up ON up.concept_id = c.id
      ORDER BY t.id, s.id, c.id
    ''');

    // Group the flat data into the hierarchical structure
    Map<int, Theme> themes = {};
    Map<int, Subtheme> subthemes = {};

    for (var row in themesData) {
      final themeId = row['theme_id'] as int;
      final subthemeId = row['subtheme_id'] as int;

      // Create theme if it doesn't exist
      if (!themes.containsKey(themeId)) {
        themes[themeId] = Theme(
          name: row['theme_name'],
          subthemes: [],
        );
      }

      // Create subtheme if it doesn't exist
      if (!subthemes.containsKey(subthemeId)) {
        subthemes[subthemeId] = Subtheme(
          name: row['subtheme_name'],
          concepts: [],
        );
        themes[themeId]!.subthemes.add(subthemes[subthemeId]!);
      }

      // Add concept to subtheme
      if (row['concept_id'] != null) {
        subthemes[subthemeId]!.concepts.add(
              Concept(
                name: row['concept_name'],
                rarity: row['rarity'],
                content: row['description'],
                unlocked: row['unlocked'] == 1,
              ),
            );
      }
    }

    return themes.values.toList();
  }

  // Unlock a concept
  Future<void> unlockConcept(String themeName, String subthemeName, String conceptName) async {
    final db = await _databaseHelper.database;

    await db.rawUpdate('''
      UPDATE user_progress
      SET unlocked = 1, unlock_date = ?
      WHERE concept_id IN (
        SELECT c.id
        FROM concepts c
        JOIN subthemes s ON c.subtheme_id = s.id
        JOIN themes t ON s.theme_id = t.id
        WHERE t.name = ? AND s.name = ? AND c.name = ?
      )
    ''', [
      DateTime.now().toIso8601String(),
      themeName,
      subthemeName,
      conceptName,
    ]);
  }

  // Get progress statistics
  Future<Map<String, dynamic>> getProgressStats() async {
    final db = await _databaseHelper.database;

    final totalConcepts = Sqflite.firstIntValue(await db.rawQuery('SELECT COUNT(*) FROM concepts')) ?? 0;

    final unlockedConcepts =
        Sqflite.firstIntValue(await db.rawQuery('SELECT COUNT(*) FROM user_progress WHERE unlocked = 1')) ?? 0;

    final Map<String, int> rarityStats = {};
    final List<Map<String, dynamic>> rarityData = await db.rawQuery('''
      SELECT c.rarity, COUNT(*) as count
      FROM concepts c
      JOIN user_progress up ON c.id = up.concept_id
      WHERE up.unlocked = 1
      GROUP BY c.rarity
    ''');

    for (var row in rarityData) {
      rarityStats[row['rarity']] = row['count'];
    }

    return {
      'totalConcepts': totalConcepts,
      'unlockedConcepts': unlockedConcepts,
      'progressPercentage': (unlockedConcepts / totalConcepts * 100).toStringAsFixed(1),
      'rarityBreakdown': rarityStats,
    };
  }

  // Reset progress
  Future<void> resetProgress() async {
    final db = await _databaseHelper.database;
    await db.update('user_progress', {
      'unlocked': 0,
      'unlock_date': null,
    });
  }
}
