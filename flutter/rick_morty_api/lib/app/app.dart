import 'package:flutter/cupertino.dart';
import 'package:rick_morty_api/config/app_router.dart';
import 'package:rick_morty_api/features/character/provider/api_provider.dart';

import 'package:provider/provider.dart';
import 'package:rick_morty_api/features/episodes/provider/episode_provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ApiProvider()),
        ChangeNotifierProvider(create: (_) => EpisodeProvider()),
      ],
      child: CupertinoApp.router(
        routerConfig: router,
        theme: const CupertinoThemeData(
          brightness: Brightness.light,
          primaryColor: CupertinoColors.systemGreen,
          scaffoldBackgroundColor: CupertinoColors.lightBackgroundGray,
          textTheme: CupertinoTextThemeData(
            textStyle: TextStyle(
              color: CupertinoColors.black,
              fontSize: 16,
              fontFamily: 'Rubik',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
