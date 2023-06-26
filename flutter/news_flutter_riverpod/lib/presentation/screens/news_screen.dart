import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_flutter_riverpod/models/news_model.dart';
import 'package:news_flutter_riverpod/presentation/providers/news_provider.dart';
import 'package:news_flutter_riverpod/presentation/widgets/news_card.dart';
import 'package:news_flutter_riverpod/presentation/widgets/widgets.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News Paper'),
      ),
      body: const ArticleScreen(),
    );
  }
}

class ArticleScreen extends ConsumerWidget {
  const ArticleScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    NewsModel news = ref.watch(newsProvider).newsModel;
    bool isLoading = ref.watch(newsProvider).isLoading;

    return Column(
      children: [
        const SearchField(),
        isLoading
            ? SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: const CircularProgressIndicator.adaptive(),
              )
            : Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: news.articles!.length,
                  itemBuilder: (context, index) {
                    final article = news.articles![index];
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                          context,
                          'news_details_screen',
                          arguments: article,
                        );
                      },
                      child: NewsCard(
                        author: article.author,
                        title: article.title,
                        urlToImage: article.urlToImage,
                      ),
                    );
                  },
                ),
              ),
      ],
    );
  }
}
