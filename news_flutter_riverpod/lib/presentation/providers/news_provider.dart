import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:news_flutter_riverpod/models/models.dart';
import 'package:news_flutter_riverpod/services/news_services.dart';

part 'news_provider.freezed.dart';

/// News provider
final newsProvider = StateNotifierProvider<NewsNotifier, NewsState>(
  (ref) => NewsNotifier(),
);

/// StateNotifier for news provider
class NewsNotifier extends StateNotifier<NewsState> {
  NewsNotifier()
      : super(
          NewsState(newsModel: NewsModel(articles: [])),
        ) {
    loadNews();
  }

  /// Load news

  loadNews() async {
    state = state.copyWith(isLoading: true);
    final newsResponse = await NewsService().fetchNews();

    final news = NewsModel.fromJson(newsResponse);
    state = state.copyWith(newsModel: news, isLoading: false);
  }

  /// LoadSearched news
  /// [search] is the keyword to search
  loadSearchedNews(String title) async {
    state = state.copyWith(isLoading: true);
    final newsResponse = await NewsService().fetchNewsBySearching(title);

    final news = NewsModel.fromJson(newsResponse);
    state = state.copyWith(newsModel: news, isLoading: false);
  }
}

///  State of the news provider
@freezed
class NewsState with _$NewsState {
  const factory NewsState({
    @Default(true) bool isLoading,
    required NewsModel newsModel,
  }) = _NewsState;

  const NewsState._();
}
