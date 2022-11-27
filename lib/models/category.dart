import 'package:flutter/material.dart' show Colors, MaterialColor;

class Category {
  final String id;
  final String title;
  final MaterialColor color;
  const Category({this.id, this.title, this.color = Colors.orange});
}
