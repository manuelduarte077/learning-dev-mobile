import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/home_viewmodel.dart';
import 'widgets/joke_card.dart';
import 'widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeViewModel()..loadInitialData(),
      child: Scaffold(
        appBar: AppBar(title: const Text('Chuck Norris Jokes')),
        body: Consumer<HomeViewModel>(
          builder: (context, viewModel, _) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  if (viewModel.randomJoke != null)
                    JokeCard(
                      joke: viewModel.randomJoke!,
                      onRefresh: viewModel.fetchRandomJoke,
                    ),
                  const SizedBox(height: 20),
                  SearchBarWidget(onSearch: viewModel.searchJoke),
                  if (viewModel.searchResult != null)
                    JokeCard(joke: viewModel.searchResult!),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
