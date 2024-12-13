import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/joke_model.dart';

class ApiService {
  final String _baseUrl = 'https://api.chucknorris.io';

  Future<List<String>> fetchCategories() async {
    final response = await http.get(Uri.parse('$_baseUrl/jokes/categories'));

    if (response.statusCode == 200) {
      return List<String>.from(json.decode(response.body));
    } else {
      throw Exception('Failed to load categories');
    }
  }

  Future<Joke> fetchRandomJoke() async {
    final response = await http.get(Uri.parse('$_baseUrl/jokes/random'));

    if (response.statusCode == 200) {
      return Joke.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load joke');
    }
  }

  Future<Joke> fetchJokeByCategory(String category) async {
    final response =
        await http.get(Uri.parse('$_baseUrl/jokes/random?category=$category'));

    if (response.statusCode == 200) {
      return Joke.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load joke');
    }
  }

  Future<Joke?> searchJoke(String query) async {
    final response =
        await http.get(Uri.parse('$_baseUrl/jokes/search?query=$query'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      if (data['result'].isNotEmpty) {
        return Joke.fromJson(data['result'][0]);
      }
    }
    return null;
  }
}
