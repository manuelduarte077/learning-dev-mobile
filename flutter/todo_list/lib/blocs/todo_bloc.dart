import 'package:rxdart/rxdart.dart';
import 'package:todo_list/model/todo_model.dart';

import 'package:todo_list/repositories/repository.dart';

class ToDoBloc {
  final repository = Repository();

  // the code below is used to create an instance of the publish subject class
  final _todoFetcher = PublishSubject<List<TodoModel>>();

  // the code below is used to create a getter for getting of type Stream<TODOModel> for
  // getting the stream from PublishSubject()

  Stream<List<TodoModel>> get allTodos => _todoFetcher.stream;

  ToDoBloc() {
    getAllTodos();
  }

  // the code below is used to create a method to get all the todos
  getAllTodos() async {
    List<TodoModel> todoList = await repository.getAllTodos();
    _todoFetcher.sink.add(todoList);
  }

  // the code below is used to update the todos
  updateTodoTable(TodoModel todo) async {
    await repository.updateTodoTable(todo);
    getAllTodos();
  }

  // the code below is used to create a method to add the TODOs
  addTodoTable(TodoModel todo) async {
    await repository.createTodoTable(todo);
    getAllTodos();
  }

  // the code below is used to delete the ToDO
  deleteTodoTable(int id) async {
    await repository.deleteTodoTable(id);
    getAllTodos();
  }
}

final todoBloc = ToDoBloc();
