import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/filters_screen.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key key}) : super(key: key);

  Widget buildListTile(String text, IconData icon, Function handler) {
    return ListTile(
      onTap: handler,
      leading: Icon(
        icon,
        size: 26,
      ),
      title: Text(
        text,
        style: TextStyle(
            fontFamily: "RobotoCondensed",
            fontSize: 24,
            fontWeight: FontWeight.w700),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).colorScheme.secondary,
            child: Text(
              "Cooking up!",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile("Meals", Icons.restaurant,
              () => Navigator.of(context).pushReplacementNamed("/")),
          buildListTile(
            "Filters",
            Icons.settings,
            () => Navigator.of(context).pushNamed(FiltersScreen.routeName),
          ),
        ],
      ),
    );
  }
}
