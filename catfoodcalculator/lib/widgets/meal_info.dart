import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'counter.dart';

enum MealType {
  wet,
  dry,
}

class MealInfo extends StatefulWidget {
  final MealType mealType;
  final Function(double) onRatioChanged;

  const MealInfo({
    super.key,
    required this.mealType,
    required this.onRatioChanged,
  });

  @override
  State<StatefulWidget> createState() {
    return _MealInfoState();
  }
}

class _MealInfoState extends State<MealInfo> {
  final TextEditingController _controller = TextEditingController(text: '70');
  int _catWeight = 4;
  int _quantity = 70;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.min, children: [
      Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        _title(),
        const SizedBox(height: 20),
        Image.asset(
          'assets/${widget.mealType.name}_food.png',
          width: 100,
          height: 100,
        ),
      ]),
      const SizedBox(width: 20),
      Column(children: [
        Column(
          children: [
            Counter(
              baseCounter: 4,
              onCounterUpdated: (count) {
                _catWeight = count;
                widget.onRatioChanged(_quantity / _catWeight);
              },
              suffix: 'kg',
              title: 'For a cat of',
            ),
            SizedBox(
              width: 200,
              child: Row(crossAxisAlignment: CrossAxisAlignment.end, children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      labelText: 'They should eat',
                      hintText: '70',
                      suffixText: 'g per day',
                    ),
                    keyboardType: const TextInputType.numberWithOptions(
                      signed: false,
                      decimal: false,
                    ),
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    onChanged: (newVal) {
                      _quantity = int.parse(newVal);
                      widget.onRatioChanged(_quantity / _catWeight);
                    },
                  ),
                ),
                const SizedBox(width: 8),
                IconButton(
                  // TODO Replace onInfoPressed with an extension
                  onPressed: onInfoPressed,
                  splashRadius: 16,
                  icon: const Icon(
                    Icons.info,
                    color: Colors.black87,
                  ),
                )
              ]),
            ),
          ],
        )
      ]),
    ]);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void onInfoPressed() {
    final text = widget.mealType == MealType.wet
        ? 'You can find this data printed on the pack of wet food'
        : 'Your bag of dry food should have this data printed on it';
    showDialog<void>(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Text(text),
            actions: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('OK'),
              )
            ],
          );
        });
  }

  Widget _title() {
    final foodType = widget.mealType.name.toUpperCase();

    return Text(
      '$foodType food',
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }
}
