import 'package:flutter/material.dart';
import '../../models/joke_model.dart';

class JokeCard extends StatelessWidget {
  final Joke joke;
  final Future<void> Function()? onRefresh;

  const JokeCard({super.key, required this.joke, this.onRefresh});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: const BorderSide(color: Colors.grey),
      ),
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(joke.value, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 20),
            if (onRefresh != null)
              FilledButton(
                onPressed: onRefresh,
                child: const Text('Show Another Joke'),
              ),
          ],
        ),
      ),
    );
  }
}
