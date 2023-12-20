import 'package:flutter/material.dart';
import 'package:icecream_store/app_theme.dart';
import 'package:icecream_store/screens/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme().themeData,
      themeMode: ThemeMode.system,
      home: const HomeScreen(),
    );
  }
}
