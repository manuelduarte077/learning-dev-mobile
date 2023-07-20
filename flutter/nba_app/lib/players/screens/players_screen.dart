import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nba_app/players/model/player_model.dart';
import 'package:nba_app/players/providers/player_provider.dart';
import 'package:nba_app/players/widgets/search_field.dart';

class PlayersScren extends StatelessWidget {
  const PlayersScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Players'),
      ),
      body: const PlayerList(),
    );
  }
}

class PlayerList extends ConsumerWidget {
  const PlayerList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PlayersModel playerModel = ref.watch(playerProvider).player;
    bool isLoading = ref.watch(playerProvider).isLoading;

    print(playerModel.player!.length);
    print(isLoading);

    return Column(
      children: [
        const SearchField(),
        isLoading
            ? const Center(
                child: CircularProgressIndicator.adaptive(),
              )
            : Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: playerModel.player!.length,
                  itemBuilder: (context, index) {
                    final player = playerModel.player![index];

                    print(player.length() + index);

                    return const ListTile(
                      title: Text(
                        'q',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    );
                  },
                ),
              ),
      ],
    );
  }
}
