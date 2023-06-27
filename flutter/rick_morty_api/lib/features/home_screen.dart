import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:rick_morty_api/features/character/character_screen.dart';
import 'package:rick_morty_api/features/episodes/episodes_screen.dart';
import 'package:rick_morty_api/features/locations_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.pageIndex});

  final int pageIndex;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final viewRoutes = const <Widget>[
    CharacterScreen(),
    EpisodesScreen(),
    LocationScreen()
  ];

  void onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/home/0');
        break;

      case 1:
        context.go('/home/1');
        break;

      case 2:
        context.go('/home/2');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: widget.pageIndex,
        onTap: (int index) => onItemTapped(context, index),
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
        return CupertinoPageScaffold(
          child: viewRoutes[index],
        );
      },
    );
  }
}

class CustomCupertinoTabBar extends StatelessWidget {
  const CustomCupertinoTabBar({
    super.key,
    required this.currentIndex,
  });

  final int currentIndex;

  void onItemTapped(BuildContext context, int index) {
    switch (index) {
      case 0:
        context.go('/home/0');
        break;

      case 1:
        context.go('/home/1');
        break;

      case 2:
        context.go('/home/2');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabBar(
      currentIndex: currentIndex,
      onTap: (int index) => onItemTapped(context, index),
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
    );
  }
}
