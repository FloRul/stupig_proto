import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

class DatabaseHelper {
  Database? _database;

  Future<Database> get database async {
    _database ??= await _initDatabase();
    print('Database initialized');
    return _database!;
  }

  Future<Database> _initDatabase() async {
    // For web, we need to initialize the factory first
    if (kIsWeb) {
      databaseFactory = databaseFactoryFfiWeb;
    }

    String path = 'progression.db'; // Simplified path for web

    var db = await databaseFactory.openDatabase(
      path,
      options: OpenDatabaseOptions(
        version: 1,
        onCreate: _onCreate,
      ),
    );
    return db;
  }

  // Check if initial data is already imported
  Future<bool> hasInitialData() async {
    final db = await database;
    final result = await db.query(
      'themes',
      limit: 1,
    );
    return result.isNotEmpty;
  }

  Future<void> _onCreate(Database db, int version) async {
    // Themes table
    await db.execute('''
      CREATE TABLE themes (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        tier INTEGER NOT NULL,
        name TEXT NOT NULL
      )
    ''');

    // Subthemes table with foreign key to themes
    await db.execute('''
      CREATE TABLE subthemes (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        theme_id INTEGER NOT NULL,
        name TEXT NOT NULL,
        FOREIGN KEY (theme_id) REFERENCES themes (id) ON DELETE CASCADE
      )
    ''');

    // Concepts table with foreign key to subthemes
    await db.execute('''
      CREATE TABLE concepts (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        subtheme_id INTEGER NOT NULL,
        name TEXT NOT NULL,
        rarity TEXT NOT NULL,
        content TEXT NOT NULL,
        FOREIGN KEY (subtheme_id) REFERENCES subthemes (id) ON DELETE CASCADE
      )
    ''');

    // User progress table to track unlocked concepts
    await db.execute('''
      CREATE TABLE user_progress (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        concept_id INTEGER NOT NULL,
        unlocked BOOLEAN NOT NULL DEFAULT 0,
        unlock_date DATETIME,
        FOREIGN KEY (concept_id) REFERENCES concepts (id) ON DELETE CASCADE
      )
    ''');
  }
}
