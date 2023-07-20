import 'package:dio/dio.dart';
import 'package:nba_app/config/constants/environment.dart';

class PlayerService {
  final _dio = Dio(
    BaseOptions(
      baseUrl: Environment.apiUrl,
      responseType: ResponseType.json,
    ),
  );

  /// Get all players
  getAllPlayers() async {
    final response = await _dio.get('/players');

    return response.data;
  }

  /// Fetch players by search
  getPlayersBySearch(String name) async {
    try {
      final response = await _dio.get(
        '/players',
        queryParameters: {'search': name},
      );

      print(response.data);
      return response.data;
    } catch (e) {
      print(e);
    }
  }
}
