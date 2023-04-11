import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static initEnvironment() => dotenv.load();

  static String apiUrl =
      dotenv.env['API_URL'] ?? 'No está configurado el API_URL';

  static String apiKey =
      dotenv.env['API_KEY'] ?? 'No está configurado el API_KEY';
}
