import 'package:flutter/material.dart';

class RecipeBook extends StatelessWidget {
  const RecipeBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text(
          'Recipe Book',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
