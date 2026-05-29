import 'package:flutter/material.dart';

class CommonUIFixesScreen extends StatelessWidget {
  const CommonUIFixesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exercise 5 – Common UI Fixes')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Correct ListView inside Column using Expanded',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 10),

            Expanded(
              child: ListView(
                children: const [
                  ListTile(leading: Icon(Icons.movie), title: Text('Movie A')),
                  ListTile(leading: Icon(Icons.movie), title: Text('Movie B')),
                  ListTile(leading: Icon(Icons.movie), title: Text('Movie C')),
                  ListTile(leading: Icon(Icons.movie), title: Text('Movie D')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}