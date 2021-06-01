import 'dart:async';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class Goal {
  int id;
  String category;
  String type;
  String frequency;
  int amount;

  Goal({
    this.id,
    this.category,
    this.type,
    this.frequency,
    this.amount,
  });
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'category': category,
      'type': type,
      'frequency': frequency,
      'amount': amount,
    };
  }
}

class DatabaseHelper {
  static Database _database;

  Future<Database> get database async {
    if (_database == null) {
      _database = await initializeDatabase();
    }
    return _database;
  }

  Future<Database> initializeDatabase() async {
    String dbPath = join(await getDatabasesPath(), "panout.db");
    var db = await openDatabase(dbPath, version: 1, onCreate: createDb);
    return db;
  }

  void createDb(Database db, int version) async {
    await db.execute(
      'CREATE TABLE "goals" ("id"	INTEGER UNIQUE,"category"	TEXT,	"type"	TEXT,	"frequency"	TEXT,	"amount"	INTEGER, PRIMARY KEY("id" AUTOINCREMENT))',
    );
  }

  Future<void> insertGoal(Goal goal) async {
    final db = await database;
    await db.insert(
      'goals',
      goal.toMap(),
      conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<List<Goal>> goals() async {
    // Get a reference to the database.
    final db = await database;

    // Query the table for all The Dogs.
    final List<Map<String, dynamic>> maps = await db.query('goals');

    // Convert the List<Map<String, dynamic> into a List<Dog>.
    return List.generate(maps.length, (i) {
      return Goal(
        id: maps[i]['id'],
        category: maps[i]['category'],
        type: maps[i]['type'],
        frequency: maps[i]['frequency'],
        amount: maps[i]['amount'],
      );
    });
  }
}
