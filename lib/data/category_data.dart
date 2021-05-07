import 'package:flutter/material.dart';

import '../models/category.dart';

class Categories {
  List<Category> _categories = [
    Category(
      categoryName: 'Feelz',
      catColor: Colors.red,
      iconButton: Icons.bolt_rounded,
    ),
    Category(
      categoryName: 'Communication',
      catColor: Colors.amber,
      iconButton: Icons.chat_rounded,
    ),
    Category(
      categoryName: 'Basic Needs',
      catColor: Colors.green,
      iconButton: Icons.emoji_food_beverage_rounded,
    ),
  ];
}
