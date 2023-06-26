import 'package:flutter/material.dart';
import 'package:weather_extension/theme/theme_app.dart';
import 'package:weather_extension/view/weather_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme().getTheme(),
      title: 'Weather extension',
      home: const WeatherPage(),
    );
  }
}
