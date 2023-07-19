import 'package:flutter/material.dart';

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

class PlayerList extends StatelessWidget {
  const PlayerList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
