import 'package:flutter/material.dart';
import 'package:news_flutter_riverpod/config/theme/app_theme.dart';
import 'package:news_flutter_riverpod/presentation/screens/screens.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme().getTheme(),
      home: const NewsScreen(),
    );
  }
}
