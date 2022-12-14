import '../data/meal_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _catWeightController =
      TextEditingController(text: '4');
  double _mealRepartition = 3.0;
  int _nbMeals = 4;
  double _ratioWetFoodPerKg = 70 / 4;
  double _ratioDryFoodPerKg = 70 / 4;
  String? _catWeightComment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: _mainColumnContent(),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _mainColumnContent() {
    const space = SizedBox(height: 20);

    return [
      Text(
        'Cat Food Calculator',
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.displaySmall,
      ),
      space,
      Wrap(
          alignment: WrapAlignment.center,
          runSpacing: 20,
          spacing: 40,
          children: [
            Image.asset('assets/cat.png', width: 100, height: 100),
            SizedBox(
              width: 200,
              child: Column(children: [
                Text(
                  'Your cat weight',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                TextField(
                  controller: _catWeightController,
                  decoration: const InputDecoration(
                    hintText: '4.9',
                    suffixText: 'kg',
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    signed: false,
                    decimal: true,
                  ),
                  inputFormatters: [
                    TextInputFormatter.withFunction((oldValue, newValue) {
                      try {
                        final text = newValue.text;
                        if (text.isNotEmpty) double.parse(text);
                        return newValue;
                      } catch (_) {
                        // Nothing to do
                      }
                      return oldValue;
                    }),
                  ],
                  onChanged: (newVal) {
                    final catWeight = double.tryParse(newVal);
                    _updateCatComment(catWeight);

                    // Update fields when cat's weight changes
                    setState(() {});
                  },
                ),
              ]),
            ),
            Counter(
              title: 'Number of meals',
              style: Theme.of(context).textTheme.headlineSmall,
              suffix: 'per day',
              baseCounter: 4,
              onCounterUpdated: (nbMeals) {
                if (nbMeals < _mealRepartition) {
                  _mealRepartition = nbMeals.toDouble();
                }
                setState(() {
                  _nbMeals = nbMeals;
                });
              },
            ),
          ]),
      space,
      _catWeightCommentBuilder(),
      space,
      Wrap(runSpacing: 20, spacing: 40, children: [
        MealInfo(
          mealType: MealType.wet,
          onRatioChanged: (newRatio) {
            setState(() {
              _ratioWetFoodPerKg = newRatio;
            });
          },
        ),
        MealInfo(
          mealType: MealType.dry,
          onRatioChanged: (newRatio) {
            setState(() {
              _ratioDryFoodPerKg = newRatio;
            });
          },
        ),
      ]),
      space,
      Column(
        children: [
          Text(
            'Repartition',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Row(children: [
            Text(
              'Dry',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Expanded(
              // TODO Replace SliderTheme with ThemedSlider
              child: SliderTheme(
                data: const SliderThemeData(
                  trackHeight: 16,
                  tickMarkShape: RoundSliderTickMarkShape(tickMarkRadius: 6),
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 16),
                  thumbColor: Color(0xffffa938),
                ),
                child: Slider(
                    value: _mealRepartition,
                    min: 0,
                    max: _nbMeals.toDouble(),
                    divisions: _nbMeals,
                    onChanged: (newVal) {
                      setState(() {
                        _mealRepartition = newVal;
                      });
                    }),
              ),
            ),
            Text(
              'Wet',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ]),
          space,
          MealRepartitionResult(
            mealData: MealData.dry(
              nbMeals: _mealRepartition.round(),
              eachAmount: _calculateRation(MealType.dry),
            ),
          ),
          const SizedBox(height: 8),
          MealRepartitionResult(
            mealData: MealData.wet(
              nbMeals: (_nbMeals - _mealRepartition).round(),
              eachAmount: _calculateRation(MealType.wet),
            ),
          ),
          // TODO add a save button here
        ],
      ),
    ]; // TODO Add separation between items with an extension
  }

  Widget _catWeightCommentBuilder() {
    return Text(
      _catWeightComment ?? '',
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            fontStyle: FontStyle.italic,
          ),
    );
  }

  void _updateCatComment(double? catWeight) {
    if (catWeight != null) {
      if (catWeight < 3) {
        _catWeightComment =
            "if it's not a kitty, you can probably increase your cat's meals!";
      } else if (catWeight > 7) {
        _catWeightComment = 'is that a tiger? 😮';
      } else {
        _catWeightComment = null;
      }
    }
  }

  int? _calculateRation(MealType mealType) {
    double ratio;
    int nbRations;
    if (mealType == MealType.wet) {
      ratio = _ratioWetFoodPerKg;
      nbRations = (_nbMeals - _mealRepartition).round();
    } else {
      ratio = _ratioDryFoodPerKg;
      nbRations = _mealRepartition.round();
    }
    final catWeight = double.tryParse(_catWeightController.text);
    if (catWeight == null) {
      return null;
    } else {
      return (nbRations * (catWeight * ratio) / _nbMeals).round();
    }
  }

  @override
  void dispose() {
    _catWeightController.dispose();
    super.dispose();
  }
}
