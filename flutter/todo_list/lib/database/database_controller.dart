import 'package:todo_list/database/todo_database.dart';
import 'package:todo_list/model/todo_model.dart';

class DatabaseController {
  final dbClient = DatabaseProvider.dbProvider;

  Future<int> createToDO(TodoModel todo) async {
    // the code below is used to get the access to the db getter
    final db = await dbClient.db;

    final result = db.insert('Todos', todo.toJson());

    return result;
  }

  Future<List<TodoModel>> getAllTodos({List<String>? columns}) async {
    // the code below is used to get the access to the db getter
    final db = await dbClient.db;

    // the code below is used to query the database
    final result = await db.query('Todos', columns: columns);

    List<TodoModel> todos = result.isNotEmpty
        ? result.map((todo) => TodoModel.fromJson(todo)).toList()
        : [];

    return todos;
  }

  // the code below is used to create a method to update the todoTable
  Future<int> updateTodoTable(TodoModel todo) async {
    // the code below is used to get the access to the db getter
    final db = await dbClient.db;

    final result = await db.update(
      'Todos',
      todo.toJson(),
      where: 'id = ?',
      whereArgs: [todo.id],
    );

    return result;
  }

  //the method below is used to Delete Todo records
  Future<int> deleteTodoTable(int id) async {
    // the code below is used to get the access to the db getter
    final db = await dbClient.db;

    final result = await db.delete(
      'Todos',
      where: 'id = ?',
      whereArgs: [id],
    );

    return result;
  }
}
