import 'package:flutter/material.dart';
import 'package:icecream_store/app_theme.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ice Cream'),
        ),
        body: const SafeArea(
          child: Center(
            child: Text('Hello World!'),
          ),
        ),
      ),
    );
  }
}
