// the code below is used to create a class that will act as an abstraction layer
// for the data source provider which is our local database

import 'package:todo_list/database/database_controller.dart';
import 'package:todo_list/model/todo_model.dart';

class Repository {
  // the code below is used to create an instance of the DatabaseController class

  final dbController = DatabaseController();

  Future getAllTodos() => dbController.getAllTodos();

  Future createTodoTable(TodoModel todo) => dbController.createToDO(todo);

  Future updateTodoTable(TodoModel todo) => dbController.updateTodoTable(todo);

  Future deleteTodoTable(int id) => dbController.deleteTodoTable(id);
}
