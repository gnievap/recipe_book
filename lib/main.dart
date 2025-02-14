import 'package:flutter/material.dart';
import 'package:recipe_book/recipe_book.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RecipeBook(),
    );
  }
}
