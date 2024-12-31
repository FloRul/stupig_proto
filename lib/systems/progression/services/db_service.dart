import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() => _instance;

  DatabaseHelper._internal();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    String path = join(await getDatabasesPath(), 'progression.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  Future<void> _onCreate(Database db, int version) async {
    // Themes table
    await db.execute('''
      CREATE TABLE themes (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
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
