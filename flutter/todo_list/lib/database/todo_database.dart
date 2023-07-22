import 'dart:io';

import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseProvider {
  // the code below is used to create a static final instance of the Database provider class
  static final DatabaseProvider dbProvider = DatabaseProvider();

  // the code below is used to create a static final instance of the database
  Database? _database;

  // the code below is used to create a getter for checking that if the database
  // is not null then returning the database else creating a new database
  Future<Database> get db async {
    if (_database != null) {
      return _database!;
    } else {
      _database = await createDatabase();
      return _database!;
    }
  }

  // the code below is used to create a method to create the database
  Future<Database> createDatabase() async {
    Directory docDirectory = await getApplicationDocumentsDirectory();

    String path = join(docDirectory.path, 'todo.db');

    await deleteDatabase(path);

    final database = await openDatabase(
      path,
      version: 2,
      onCreate: (db, version) async {
        await db.execute(tableTodo);
      },
      onUpgrade: (db, oldVersion, newVersion) {
        if (newVersion > oldVersion) {}
      },
    );

    return database;
  }

  static const tableTodo = """
          CREATE TABLE IF NOT EXISTS Todos (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            title TEXT,
            description TEXT,
            isDone INTEGER
          );
      """;
}
