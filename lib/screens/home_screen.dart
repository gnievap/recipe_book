import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          _recipesCard(context),
          _recipesCard(context),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orange,
          child: const Icon(Icons.add, color: Colors.white),
          onPressed: () {
            _showBottom(context);
          }),
    );
  }

  Future<void> _showBottom(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) => Container(
              width: MediaQuery.of(context).size.width,
              height: 500,
              color: Colors.white,
              child: const RecipeForm(),
            ));
  }

  Widget _recipesCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 125,
        child: Card(
          child: Row(children: [
            Container(
              height: 125,
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                    'https://static.platzi.com/media/uploads/flutter_lasana_b894f1aee1.jpg',
                    fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              width: 26,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Lasagna',
                  style: TextStyle(fontSize: 16, fontFamily: 'Quicksand'),
                ),
                const SizedBox(
                  height: 4.0,
                ),
                Container(
                  height: 2,
                  width: 75,
                  color: Colors.orange,
                ),
                const Text(
                  'Gaby N.',
                  style: TextStyle(fontSize: 16, fontFamily: 'Quicksand'),
                ),
                const SizedBox(
                  height: 4.0,
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

class RecipeForm extends StatelessWidget {
  const RecipeForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        //key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Add new recipe',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 24,
                )),
            const SizedBox(
              height: 16,
            ),
            _buildTextField(label: 'Recipe name'),
          ],
        ),
      ),
    );
  }

  Widget _buildTextField({required String label}) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(
          fontFamily: 'Quicksand',
          color: Colors.orange,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.orange, width: 1),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
