import 'package:flutter/material.dart';
import 'package:nba_app/config/theme/app_theme.dart';
import 'package:nba_app/players/screens/players_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: AppTheme().getTheme(),
      home: const PlayersScren(),
      initialRoute: 'players',
      routes: {
        'players': (context) => const PlayersScren(),
      },
    );
  }
}
