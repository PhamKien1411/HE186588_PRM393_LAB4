import 'package:flutter/material.dart';

class LayoutDemoScreen extends StatelessWidget {
  const LayoutDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> movies = ['Avatar', 'Inception', 'Interstellar', 'Joker'];

    return Scaffold(
      appBar: AppBar(title: const Text('Exercise 3 – Layout Demo')),
      body: Column(
        children: [
          // Áp dụng spacing đồng bộ bằng Padding (16px)
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Now Playing',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          // Sử dụng Expanded bao bọc để ListView.builder không bị tràn không gian chiều dọc
          Expanded(
            child: ListView.builder(
              itemCount: movies.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text(movies[index][0]),
                    ),
                    title: Text(movies[index]),
                    subtitle: const Text('Sample description'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}