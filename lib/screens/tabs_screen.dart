import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';
import '../screens/categories_screen.dart';
import '../screens/favorites_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _selectedIndex = 0;
  final List<Map<String, dynamic>> _pages = [
    {"page": CategoriesScreen(), "title": "Categories"},
    {"page": FavoritesScreen(), "title": "Favorites"},
  ];

  void _selectPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(_pages[_selectedIndex]["title"]),
        ),
        drawer: MainDrawer(),
        body: _pages[_selectedIndex]["page"],
        bottomNavigationBar: BottomNavigationBar(
            onTap: _selectPage,
            backgroundColor: Theme.of(context).colorScheme.primary,
            unselectedItemColor: Colors.white,
            selectedItemColor: Theme.of(context).colorScheme.secondary,
            currentIndex: _selectedIndex,
            type: BottomNavigationBarType.shifting,
            items: [
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: Icon(Icons.category),
                label: "Categories",
              ),
              BottomNavigationBarItem(
                backgroundColor: Theme.of(context).colorScheme.primary,
                icon: Icon(Icons.star),
                label: "Favorites",
              ),
            ]),
      ),
    );
  }
}
