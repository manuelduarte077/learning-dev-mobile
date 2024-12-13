import 'package:flutter/material.dart';
import '../models/joke_model.dart';
import '../services/api_service.dart';

class HomeViewModel extends ChangeNotifier {
  final ApiService _apiService = ApiService();

  Joke? randomJoke;
  List<String> categories = [];
  Joke? searchResult;

  Future<void> loadInitialData() async {
    await fetchRandomJoke();
    await fetchCategories();
  }

  Future<void> fetchRandomJoke() async {
    randomJoke = await _apiService.fetchRandomJoke();
    notifyListeners();
  }

  Future<void> fetchCategories() async {
    categories = await _apiService.fetchCategories();
    notifyListeners();
  }

  Future<void> searchJoke(String query) async {
    searchResult = await _apiService.searchJoke(query);
    notifyListeners();
  }

  Future<void> fetchJokeByCategory(String category) async {
    searchResult = await _apiService.fetchJokeByCategory(category);

    notifyListeners();
  }
}
