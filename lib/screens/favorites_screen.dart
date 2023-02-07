import 'package:flutter/material.dart';

import '../models/meal.dart';
import '../widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;
  const FavoritesScreen(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text("You have no Favorites yet. Add some."),
      );
    }
    return ListView.builder(
      itemBuilder: (context, index) {
        final item = favoriteMeals[index];
        return MealItem(
          id: item.id,
          affordability: item.affordability,
          complexity: item.complexity,
          duration: item.duration,
          imageUrl: item.imageUrl,
          title: item.title,
        );
      },
      itemCount: favoriteMeals.length,
    );
  }
}
