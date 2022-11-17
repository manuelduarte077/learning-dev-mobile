import 'dart:convert';

import 'package:flutter_rest_api/services/config.dart';
import 'package:http/http.dart' as http;

class APIService {
  static final client = http.Client();

  /// Show Users
  static Future<dynamic> getUsers() async {
    Map<String, String> requestHeader = {
      'Content-Type': 'application/json',
    };

    final url = Uri.https(Config.apiURL, Config.apiEndPoint);

    final response = await client.get(url, headers: requestHeader);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      return data["data"];
    }

    return null;
  }

  /// Create Users
  static Future<dynamic> createUser(userName, userJob) async {
    Map<String, String> requestHeader = {
      'Content-Type': 'application/json',
    };

    final url = Uri.https(Config.apiURL, Config.apiEndPoint);

    final response = await client.post(
      url,
      headers: requestHeader,
      body: jsonEncode({
        "name": userName,
        "job": userJob,
      }),
    );

    if (response.statusCode == 201) {
      final data = jsonDecode(response.body);

      return data;
    }

    return null;
  }

  /// Updated Users
  static Future<dynamic> updatedUser(userId, userName, userJob) async {
    Map<String, String> requestHeader = {
      'Content-Type': 'application/json',
    };

    final url = Uri.https(Config.apiURL, "${Config.apiEndPoint}/$userId");

    final response = await client.put(
      url,
      headers: requestHeader,
      body: jsonEncode({
        "name": userName,
        "job": userJob,
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      return data;
    }

    return null;
  }

  /// Delete User
  static Future<bool> deleteUser(userId) async {
    Map<String, String> requestHeader = {
      'Content-Type': 'application/json',
    };

    final url = Uri.https(Config.apiURL, "${Config.apiEndPoint}/$userId");

    final response = await client.delete(
      url,
      headers: requestHeader,
    );

    if (response.statusCode == 204) {
      return true;
    }

    return false;
  }
}
