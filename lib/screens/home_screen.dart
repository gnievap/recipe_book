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
