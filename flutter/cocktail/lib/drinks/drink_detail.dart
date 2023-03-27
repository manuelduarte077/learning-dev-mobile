import 'package:cocktail/drink.dart';
import 'package:cocktail/services/url_image.dart';
import 'package:flutter/material.dart';

class DrinkDetail extends StatelessWidget {
  final Drink drink;

  const DrinkDetail({Key? key, required this.drink}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(drink.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            URLImage(url: Uri.parse(drink.imageUrl)),
            const SizedBox(height: 16),
            Text(
              'Instructions:',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(drink.description),
          ],
        ),
      ),
    );
  }
}
