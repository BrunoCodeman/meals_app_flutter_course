import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/dummy_data.dart';

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
          return Text(catMeals[index].title);
        },
        itemCount: catMeals.length,
      ),
    );
  }
}
