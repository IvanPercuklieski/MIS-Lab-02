import 'package:flutter/material.dart';
import '../models/meal.dart';

class FavoritesProvider extends ChangeNotifier {
  final List<Meal> _favoriteMeals = [];

  List<Meal> get favorites => _favoriteMeals;

  void toggleFavorite(Meal meal) {
    final isExisting = _favoriteMeals.contains(meal);
    if (isExisting) {
      _favoriteMeals.remove(meal);
    } else {
      _favoriteMeals.add(meal);
    }
    notifyListeners();
  }

  bool isFavorite(String mealId) {
    return _favoriteMeals.any((meal) => meal.idMeal == mealId);
  }
}
