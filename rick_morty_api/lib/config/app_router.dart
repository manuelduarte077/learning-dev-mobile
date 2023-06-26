import 'package:go_router/go_router.dart';
import 'package:rick_morty_api/features/character/character_details_screen.dart';
import 'package:rick_morty_api/features/home_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/home/0',
  routes: [
    GoRoute(
      path: '/home/:page',
      builder: (context, state) {
        final pageIndex = int.parse(state.pathParameters['page'] ?? '0');

        return HomeScreen(pageIndex: pageIndex);
      },
    ),
    GoRoute(
      path: '/characters',
      builder: (context, state) {
        return const CharacterDetailsScreen();
      },
    ),
  ],
);
