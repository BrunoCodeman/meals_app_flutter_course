import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/categories_screen.dart';
import 'package:flutter_complete_guide/category_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textColor = Color.fromRGBO(20, 51, 51, 1);
    final TextTheme textTheme = ThemeData.light().textTheme.copyWith(
        bodySmall: TextStyle(
          color: textColor,
        ),
        bodyMedium: TextStyle(
          color: textColor,
        ),
        titleLarge: TextStyle(
            fontSize: 24,
            fontFamily: "RobotoCondensed",
            fontWeight: FontWeight.bold));
    final ThemeData theme = ThemeData(
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: "Raleway",
        textTheme: textTheme);
    return MaterialApp(
      title: 'DeliMeals',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.pink,
          secondary: Colors.amber,
        ),
      ),
      initialRoute: "/",
      routes: {
        "/": (ctx) => CategoriesScreen(),
        CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen()
      },
    );
  }
}
