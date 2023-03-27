import '../data/meal_data.dart';
import 'package:flutter/material.dart';

import 'meal_info.dart';

class MealRepartitionResult extends StatelessWidget {
  final MealData mealData;

  const MealRepartitionResult({
    super.key,
    required this.mealData,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(children: [
        TextSpan(
          text: '${mealData.nbMeals}',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const TextSpan(text: ' meals of '),
        TextSpan(
          text: mealData.mealType == MealType.dry ? 'dry food' : 'wet food',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        const TextSpan(text: ', each '),
        TextSpan(
          text: '${mealData.eachAmount ?? '? '}g',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ]),
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}
