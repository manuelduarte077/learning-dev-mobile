import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
import 'package:rick_morty_api/features/character/model/character_model.dart';
import 'package:rick_morty_api/models/episode.dart';

class ApiProvider with ChangeNotifier {
  final url = 'rickandmortyapi.com';

  List<Character> characters = [];
  List<Episode> episodes = [];


  /// Character List
  Future<void> getCharacteres(int page) async {
    final result = await http.get(
      Uri.https(url, "/api/character", {'page': page.toString()}),
    );

    final response = characterModelFromJson(result.body);

    characters.addAll(response.results!);
    notifyListeners();
  }

  /// Search Character
  Future<void> searchCharacter(String query) async {
    final result = await http.get(
      Uri.https(url, "/api/character", {'name': query}),
    );

    final response = characterModelFromJson(result.body);

    characters = response.results!;
    notifyListeners();
  }


  ///
  Future<List<Episode>> getEpisodes(Character character) async {
    episodes = [];

    for (var i = 0; i < character.episode!.length; i++) {
      final result = await http.get(Uri.parse(character.episode?[i] ?? ''));
      final response = episodeFromJson(result.body);

      episodes.add(response);
      notifyListeners();
    }

    return episodes;
  }
}
