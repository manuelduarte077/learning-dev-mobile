import 'package:flutter/widgets.dart';

import 'package:http/http.dart' as http;
import 'package:rick_morty_api/features/episodes/model/episode_model.dart';

class EpisodeProvider with ChangeNotifier {
  final url = 'rickandmortyapi.com';

  List<Episode> episodes = [];

  /// Episode List
  Future<void> getEpisodes(int page) async {
    final result = await http.get(
      Uri.https(url, "/api/episode", {'page': page.toString()}),
    );

    final response = episodeModelFromJson(result.body);

    episodes.addAll(response.results!);
    notifyListeners();
  }
}
