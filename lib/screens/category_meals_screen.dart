import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/dummy_data.dart';
import 'package:flutter_complete_guide/widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  static String routeName = "/category-meals";
  const CategoryMealsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final catTitle = routeArgs['title'];
    final catId = routeArgs['id'];
    final catMeals =
        DUMMY_MEALS.where((el) => el.categories.contains(catId)).toList();
    return Scaffold(
      appBar: AppBar(title: Text(catTitle)),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final item = catMeals[index];
          return MealItem(
            id: item.id,
            affordability: item.affordability,
            complexity: item.complexity,
            duration: item.duration,
            imageUrl: item.imageUrl,
            title: item.title,
          );
          //return Text(catMeals[index].title);
        },
        itemCount: catMeals.length,
      ),
    );
  }
}
