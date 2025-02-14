import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 125,
        child: Card(
          child: Row(children: [
            SizedBox(
              height: 125,
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(),
              ),
            ),
            const SizedBox(
              width: 26,
            ),
            Column(
              children: [
                const Text('Lasagna'),
                const Text('Gaby N.'),
                Container(
                  height: 2,
                  width: 75,
                  color: Colors.orange,
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
