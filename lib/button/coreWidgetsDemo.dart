import 'package:flutter/material.dart';

class CoreWidgetsDemo extends StatelessWidget {
  const CoreWidgetsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exercise 1 – Core Widgets')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Headline Text
            const Text(
              'Welcome to Flutter UI',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Icon sử dụng Material Icons
            const Icon(Icons.movie, size: 60, color: Colors.blue),
            const SizedBox(height: 20),

            // Image.network lấy ảnh ngẫu nhiên hợp lệ URL
            Image.network(
              'https://picsum.photos/400/200',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),

            // Card chứa ListTile bên trong
            const Card(
              child: ListTile(
                leading: Icon(Icons.star),
                title: Text('Movie Item'),
                subtitle: Text('This is a sample ListTile inside a Card.'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}