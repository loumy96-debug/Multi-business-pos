import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class AppDatabase {
  static Database? _database;

  static Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB();
    return _database!;
  }

  static Future<Database> _initDB() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'pos_app.db');

    return await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('''
          CREATE TABLE sales(
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            total REAL,
            date TEXT
          )
        ''');
      },
    );
  }

  static Future<void> insertSale(double total) async {
    final db = await database;
    await db.insert(
      'sales',
      {
        'total': total,
        'date': DateTime.now().toIso8601String(),
      },
    );
  }
}
