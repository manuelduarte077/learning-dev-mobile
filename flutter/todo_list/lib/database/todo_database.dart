import 'dart:io';

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

    String path = '${docDirectory.path}todo.db';

    final database = await openDatabase(
      path,
      version: 1,
      onCreate: (db, version) {
        db.execute(
          'CREATE TABLE Todos('
          'id INTEGER PRIMARY KEY AUTOINCREMENT,'
          'title TEXT,'
          'description TEXT,'
          'isDone INTEGER,'
          ')',
        );
      },
      onUpgrade: (db, oldVersion, newVersion) {
        if (newVersion > oldVersion) {}
      },
    );
    return database;
  }
}
