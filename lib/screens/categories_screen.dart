import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/category_item.dart';
import '../dummy_data.dart' show DUMMY_CATEGORIES;

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        mainAxisSpacing: 20,
      ),
      children: DUMMY_CATEGORIES
          .map((e) => CategoryItem(id: e.id, title: e.title, color: e.color))
          .toList(),
    );
  }
}
