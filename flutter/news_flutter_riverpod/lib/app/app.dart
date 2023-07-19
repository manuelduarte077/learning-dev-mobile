import 'package:flutter/material.dart';
import 'package:news_flutter_riverpod/config/theme/app_theme.dart';
import 'package:news_flutter_riverpod/presentation/screens/screens.dart';

import '../models/article_model.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme().getTheme(),
      home: const NewsScreen(),
      initialRoute: 'news_screen',
      routes: {
        'news_screen': (context) => const NewsScreen(),
        'news_details_screen': (context) => NewsDetailsScreen(
              article: ModalRoute.of(context)!.settings.arguments as Article,
            ),
      },
    );
  }
}
