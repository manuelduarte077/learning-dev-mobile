import 'package:flutter/cupertino.dart';
import 'package:rick_morty_api/config/app_router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoApp.router(
        routerConfig: router,
        theme: const CupertinoThemeData(
          brightness: Brightness.dark,
          primaryColor: CupertinoColors.lightBackgroundGray,
          scaffoldBackgroundColor: CupertinoColors.darkBackgroundGray,
          textTheme: CupertinoTextThemeData(
            textStyle: TextStyle(
              color: CupertinoColors.white,
              fontSize: 16,
              fontFamily: 'Rubik',
            ),
          ),
        ),
      ),
    );
  }
}
