import 'package:flutter/foundation.dart';

class Meal {
  final String id;
  final String title;
  final int duration;
  final Complexity complexity;
  final String imageUrl;
  final List<String> categories;
  final List<String> ingredients;
  final List<String> steps;
  final Affordability affordability;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;

  const Meal({
    @required this.affordability,
    @required this.isGlutenFree,
    @required this.isLactoseFree,
    @required this.isVegan,
    @required this.isVegetarian,
    @required this.id,
    @required this.title,
    @required this.steps,
    @required this.duration,
    @required this.complexity,
    @required this.categories,
    @required this.imageUrl,
    @required this.ingredients,
  });
}

enum Complexity { Simple, Challenging, Hard }

enum Affordability { Affordable, Pricey, Luxurious }
