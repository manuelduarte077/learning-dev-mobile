import '../widgets/meal_info.dart';

class MealData {
  int nbMeals;
  final MealType mealType;
  int? eachAmount;

  MealData._({
    required this.nbMeals,
    required this.mealType,
    required this.eachAmount,
  });

  MealData.dry({
    required this.nbMeals,
    required this.eachAmount,
  }) : mealType = MealType.dry;

  MealData.wet({
    required this.nbMeals,
    required this.eachAmount,
  }) : mealType = MealType.wet;

  MealData.fromJson(
    Map<String, dynamic> json,
  ) : this._(
          nbMeals: int.parse(json['nbMeals'] as String),
          mealType:
              MealType.values.firstWhere((e) => e.name == json['mealType']),
          eachAmount: int.tryParse(json['eachAmount'] as String),
        );

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'nbMeals': nbMeals,
      'mealType': mealType.name,
      'eachAmount': eachAmount,
    };
  }
}
