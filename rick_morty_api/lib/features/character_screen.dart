import 'package:flutter/cupertino.dart';

class CharacterScreen extends StatelessWidget {
  const CharacterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text('Rick and Morty'),
          ),
          SliverFillRemaining(
            child: RickMortyWidget(),
          ),
        ],
      ),
    );
  }
}

class RickMortyWidget extends StatelessWidget {
  const RickMortyWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CupertinoButton(
          child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                color: CupertinoColors.systemPurple,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  'Rick and Morty',
                  style: TextStyle(
                    color: CupertinoColors.white,
                  ),
                ),
              )),
          onPressed: () {},
        ),
      ],
    );
  }
}
