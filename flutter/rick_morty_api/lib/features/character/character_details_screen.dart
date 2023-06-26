import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

class CharacterDetailsScreen extends StatelessWidget {
  const CharacterDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('Character Details'),
        previousPageTitle: 'Character',
        leading: CupertinoNavigationBarBackButton(
          onPressed: () {
            context.pop();
          },
        ),
      ),
      child: const Center(
        child: Text('Character Details Screen'),
      ),
    );
  }
}
