import 'package:flutter/material.dart';

import 'package:todo_list/blocs/todo_bloc.dart';
import 'package:todo_list/features/screens/add_todo_widgets.dart';
import 'package:todo_list/model/todo_model.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    todoBloc.getAllTodos();

    return MaterialApp(
      title: 'To Do List',
      theme: ThemeData(useMaterial3: true),
      home: const ListToDo(),
    );
  }
}

class ListToDo extends StatelessWidget {
  const ListToDo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          'List ToDO',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: TodoItem(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddTodoWidget(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class TodoItem extends StatelessWidget {
  const TodoItem({super.key});

  @override
  Widget build(BuildContext context) {
    todoBloc.getAllTodos();

    return StreamBuilder<List<TodoModel>>(
      stream: todoBloc.allTodos,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final todo = snapshot.data![index];

              return Container(
                margin: const EdgeInsets.only(bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      offset: Offset(0, 2),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: ListTile(
                  title: Text(
                    todo.title ?? '',
                    style: TextStyle(
                      decoration: todo.isDone == true
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  subtitle: Text(
                    todo.description ?? '',
                    style: TextStyle(
                      decoration: todo.isDone == true
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  trailing: Checkbox(
                    value: todo.isDone,
                    onChanged: (value) {
                      todoBloc.updateTodoTable(
                        TodoModel(
                          id: snapshot.data![index].id,
                          title: snapshot.data![index].title,
                          description: snapshot.data![index].description,
                          isDone: value,
                        ),
                      );
                    },
                  ),
                  onTap: () {
                    todoBloc.deleteTodoTable(todo.id!);
                  },
                ),
              );
            },
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text(snapshot.error.toString()),
          );
        } else if (snapshot.data == null) {
          return const Center(
            child: Text('No Data Found'),
          );
        }

        return const Center(
          child: CircularProgressIndicator.adaptive(),
        );
      },
    );
  }
}
