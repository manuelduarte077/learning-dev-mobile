import 'package:flutter/material.dart';

import 'package:todo_list/blocs/todo_bloc.dart';
import 'package:todo_list/model/todo_model.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    todoBloc.getAllTodos();

    return MaterialApp(
      title: 'To Do List',
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('To Do List'),
        ),
        body: StreamBuilder<List<TodoModel>>(
          stream: todoBloc.allTodos,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  final todo = snapshot.data![index];

                  return ListTile(
                    title: Text(todo.title ?? ''),
                    subtitle: Text(todo.description ?? ''),
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
                    onTap: () {},
                  );
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddTodoWidget();
              },
            );
          },
          child: const Icon(Icons.create),
        ),
      ),
    );
  }
}

class AddTodoWidget extends StatefulWidget {
  const AddTodoWidget({super.key});

  @override
  State<AddTodoWidget> createState() => _AddTodoWidgetState();
}

class _AddTodoWidgetState extends State<AddTodoWidget> {
  String? taskName;
  String? taskDescription;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        TextField(
          decoration: const InputDecoration(
            hintText: 'Task Name',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            taskName = value;
          },
        ),
        const SizedBox(height: 20),
        TextField(
          decoration: const InputDecoration(
            hintText: 'Task Description',
            border: OutlineInputBorder(),
          ),
          onChanged: (value) {
            taskDescription = value;
          },
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            todoBloc.addTodoTable(
              TodoModel(
                title: taskName,
                description: taskDescription,
                isDone: false,
              ),
            );
            Navigator.pop(context);
          },
          child: const Text('Add Task'),
        ),
      ],
    );
  }
}

class ListToDoWidgets extends StatelessWidget {
  const ListToDoWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text('To Do List'),
          ],
        ),
      ),
    );
  }
}
