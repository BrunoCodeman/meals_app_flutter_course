import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  static String routeName = "/category-meals";
  const CategoryMealsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    return Scaffold(
        appBar: AppBar(title: Text(routeArgs['title'])),
        body: Center(
          child: Text("The recipes goes here"),
        ));
  }
}
