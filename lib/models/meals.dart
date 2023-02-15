class Meals {
  Meals({
    required this.meal,
  });
  late final List<Meal> meal;

  Meals.fromJson(Map<String, dynamic> json) {
    meal = List.from(json['meals']).map((e) => Meal.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['meals'] = meal.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Meal {
  Meal({
    required this.strMeal,
    required this.strMealThumb,
    required this.idMeal,
  });
  late final String strMeal;
  late final String strMealThumb;
  late final String idMeal;

  Meal.fromJson(Map<String, dynamic> json) {
    strMeal = json['strMeal'];
    strMealThumb = json['strMealThumb'];
    idMeal = json['idMeal'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['strMeal'] = strMeal;
    _data['strMealThumb'] = strMealThumb;
    _data['idMeal'] = idMeal;
    return _data;
  }
}
