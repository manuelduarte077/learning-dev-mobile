import 'package:flutter/widgets.dart';
import 'package:rick_morty_api/models/character_model.dart';

import 'package:http/http.dart' as http;

class ApiProvider with ChangeNotifier {
  final url = 'rickandmortyapi.com';

  List<Character> characters = [];

  /// Character List
  Future<void> getCharacteres() async {
    final result = await http.get(Uri.https(url, "/api/character"));

    final response = characterModelFromJson(result.body);

    characters.addAll(response.results!);
    notifyListeners();
  }
}
