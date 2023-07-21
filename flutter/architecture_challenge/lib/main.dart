import 'package:architecture_challenge/bloc/post_cubit.dart';
import 'package:architecture_challenge/model/post.dart';
import 'package:architecture_challenge/provider/rest_provider.dart';
import 'package:architecture_challenge/repository/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum SortOptions { id, title }

void main() {
  Repository repository = RepositoryImp(RestProvider());
  PostCubit postCubit = PostCubit(repository);

  runApp(
    BlocProvider<PostCubit>(
      create: (_) => postCubit,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyApp',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const PostPage(title: 'Posts'),
    );
  }
}

class PostPage extends StatelessWidget {
  final String title;

  const PostPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          PopupMenuButton<SortOptions>(
            icon: const Icon(Icons.more_vert),
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: SortOptions.id,
                child: Text('The default sort'),
              ),
              const PopupMenuItem(
                value: SortOptions.title,
                child: Text('Sort by title'),
              ),
            ],
            onSelected: context.read<PostCubit>().sort,
          )
        ],
      ),
      body: BlocBuilder<PostCubit, PostState>(
        builder: (_, state) {
          if (state is PostReady) {
            return ListView.separated(
              itemCount: state.postList.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                Post item = state.postList[index];

                return Container(
                    padding: const EdgeInsets.all(8),
                    child: RichText(
                      key: Key(item.id.toString()),
                      text: TextSpan(
                        style: DefaultTextStyle.of(context).style,
                        children: <TextSpan>[
                          TextSpan(
                            text: "${item.id}. ${item.title}",
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.red,
                            ),
                          ),
                          TextSpan(
                            text: '\n${item.body}',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ));
              },
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
