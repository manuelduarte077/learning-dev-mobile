import 'package:dio/dio.dart';
import 'package:news_flutter_riverpod/config/constants/environment.dart';

class NewsService {
  final _dio = Dio(
    BaseOptions(
      baseUrl: Environment.apiUrl,
      responseType: ResponseType.json,
      queryParameters: {
        'api_key': Environment.apiKey,
      },
    ),
  );

  /// fetch news from the API

  fetchNews() async {
    final response = await _dio.get(
      '/top-headlines?country=us&apiKey=${Environment.apiKey}',
    );

    return response.data;
  }

  /// fetch news by search
  fetchNewsBySearching(String title) async {
    final response = await _dio.get(
      '/everything?q=$title&apiKey=${Environment.apiKey}',
    );

    return response.data;
  }
}
