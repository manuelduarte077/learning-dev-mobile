import 'package:flutter/cupertino.dart';
import 'package:rick_morty_api/features/character_screen.dart';
import 'package:rick_morty_api/features/episodes_screen.dart';
import 'package:rick_morty_api/features/locations_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> data = [
      const CharacterScreen(),
      const EpisodesScreen(),
      const LocationScreen()
    ];
    return SafeArea(
      child: CupertinoApp(
        theme: const CupertinoThemeData(
          brightness: Brightness.light,
          primaryColor: CupertinoColors.systemPurple,
          textTheme: CupertinoTextThemeData(
            textStyle: TextStyle(
              color: CupertinoColors.black,
              fontSize: 16,
              fontFamily: 'Rubik',
            ),
          ),
        ),
        home: CupertinoTabScaffold(
          tabBar: CupertinoTabBar(
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
                label: 'Character',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.play_arrow),
                label: 'Episode',
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.location),
                label: 'Location',
              ),
            ],
          ),
          tabBuilder: (BuildContext context, int index) {
            return CupertinoTabView(
              builder: (BuildContext context) {
                return data[index];
              },
            );
          },
        ),
      ),
    );
  }
}
