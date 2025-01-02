import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:stupig_proto/systems/common/models.dart';
import 'package:stupig_proto/systems/progression/models.dart';
import 'package:stupig_proto/systems/progression/services/db_service.dart';

// TODO: should me abstracted to avoid relying on the database implementation
class ProgressionService {
  final DatabaseHelper _databaseHelper;

  ProgressionService(this._databaseHelper);

  Future<void> init(String assetPath) async {
    final hasData = await _databaseHelper.hasInitialData();
    if (!hasData) {
      await importInitialData(assetPath);
    }
  }

  Future<void> importInitialData(String assetPath) async {
    final db = await _databaseHelper.database;

    final jsonString = await rootBundle.loadString(assetPath);
    final Map<String, dynamic> jsonData = json.decode(jsonString);
    final List<dynamic> themesData = jsonData['themes'];

    await db.transaction((txn) async {
      for (var themeData in themesData) {
        // Insert theme
        int themeId = await txn.insert('themes', {
          'name': themeData['name'],
          'tier': themeData['tier'],
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
              'content': conceptData['content'],
            });

            // Initialize user progress
            await txn.insert('user_progress', {
              'concept_id': conceptId,
              'unlocked': 0,
            });
          }
        }
      }
    });
  }

  // Load themes with all related data
  Future<List<ProjectTheme>> loadThemes() async {
    final db = await _databaseHelper.database;

    final List<Map<String, dynamic>> themesData = await db.rawQuery('''
    SELECT 
      t.id as theme_id,
      t.name as theme_name,
      t.tier,
      s.id as subtheme_id,
      s.name as subtheme_name,
      c.id as concept_id,
      c.name as concept_name,
      c.rarity,
      c.content,
      up.unlocked,
      up.unlock_date
    FROM themes t
    LEFT JOIN subthemes s ON s.theme_id = t.id
    LEFT JOIN concepts c ON c.subtheme_id = s.id
    LEFT JOIN user_progress up ON up.concept_id = c.id
    ORDER BY t.id, s.id, c.id
  ''');

    // Group the flat data into the hierarchical structure
    final Map<int, List<Map<String, dynamic>>> themeGroups = {};

    // Group rows by theme_id
    for (final row in themesData) {
      final themeId = row['theme_id'] as int;
      themeGroups.putIfAbsent(themeId, () => []).add(row);
    }

    // Convert grouped data into Theme objects
    final List<ProjectTheme> themes = themeGroups.values.map((themeRows) {
      final firstRow = themeRows.first;

      // Group subthemes
      final Map<int, List<Map<String, dynamic>>> subthemeGroups = {};
      for (final row in themeRows) {
        final subthemeId = row['subtheme_id'] as int;
        subthemeGroups.putIfAbsent(subthemeId, () => []).add(row);
      }

      // Create Subthemes with their concepts
      final List<Subtheme> subthemes = subthemeGroups.values.map((subthemeRows) {
        final firstSubthemeRow = subthemeRows.first;

        // Create concepts for this subtheme
        final List<Concept> concepts = subthemeRows
            .where((row) => row['concept_id'] != null)
            .map((row) => Concept(
                  name: row['concept_name'],
                  rarity: Rarity.fromString(row['rarity']),
                  content: row['content'],
                  unlocked: row['unlocked'] == 1,
                ))
            .toList();

        return Subtheme(
          name: firstSubthemeRow['subtheme_name'],
          concepts: concepts,
        );
      }).toList();

      return ProjectTheme(
        name: firstRow['theme_name'],
        tier: firstRow['tier'],
        subthemes: subthemes,
      );
    }).toList();

    return themes;
  }

  Future<List<Concept>> getRandomLockedConcepts(int currentTier, int count) async {
    final db = await _databaseHelper.database;

    // Get random locked concepts from themes with tier <= currentTier
    final List<Map<String, dynamic>> conceptsData = await db.rawQuery('''
    SELECT 
      c.name as name,
      c.rarity as rarity,
      c.content as content,
      up.unlocked as unlocked
    FROM concepts c
    JOIN subthemes s ON c.subtheme_id = s.id
    JOIN themes t ON s.theme_id = t.id
    JOIN user_progress up ON c.id = up.concept_id
    WHERE up.unlocked = 0
    AND t.tier <= ?
    ORDER BY RANDOM()
    LIMIT ?
  ''', [currentTier, count]);

    // Convert to List<Concept>
    return conceptsData
        .map((data) => Concept(
              name: data['name'],
              rarity: Rarity.fromString(data['rarity']),
              content: data['content'],
              unlocked: data['unlocked'] == 1,
            ))
        .toList();
  }

  // Unlock a concept
  Future<void> unlockConcept(Concept concept) async {
    final db = await _databaseHelper.database;

    await db.rawUpdate('''
    UPDATE user_progress
    SET unlocked = 1, unlock_date = ?
    WHERE concept_id IN (
      SELECT c.id
      FROM concepts c
      WHERE c.name = ?
    )
  ''', [
      DateTime.now().toIso8601String(),
      concept.name,
    ]);
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
