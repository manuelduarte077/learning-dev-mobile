import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Text(
                "Nicaragua",
                style: textTheme.titleLarge?.copyWith(fontSize: 36),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
