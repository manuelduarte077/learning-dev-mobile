import 'dart:convert';

import 'package:cocktail/drink.dart';
import 'package:http/http.dart' as http;

class DrinkService {
  static const baseUrl =
      'https://www.thecocktaildb.com/api/json/v1/1/search.php?s=';

  Future<List<Drink>> getDrinks(String query) async {
    final response = await http.get(
      Uri.parse('$baseUrl$query'),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body)['drinks'];
      return List<Drink>.from(data.map((drink) => Drink.fromJson(drink)));
    } else {
      throw Exception('Failed to load drinks');
    }
  }
}
