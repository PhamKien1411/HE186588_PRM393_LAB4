import 'package:flutter/material.dart';

class AppStructureScreen extends StatelessWidget {
  final Function(bool) onThemeChanged;

  // Bỏ biến 'isDark' khỏi hàm khởi tạo vì chúng ta sẽ lấy trực tiếp từ hệ thống
  const AppStructureScreen({
    super.key,
    required this.onThemeChanged,
  });

  @override
  Widget build(BuildContext context) {
    // Tự động lắng nghe và lấy trạng thái Dark Mode trực tiếp từ hệ thống Theme của Flutter
    // Khi main.dart đổi theme, dòng này sẽ tự cập nhật biến isDark và vẽ lại UI ngay lập tức
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Exercise 4 – App Structure'),
        actions: [
          Row(
            children: [
              const Text('Dark'),
              Switch(
                value: isDark,
                onChanged: onThemeChanged, // Gọi hàm đổi theme ở main.dart
              ),
            ],
          )
        ],
      ),
      body: const Center(
        child: Text('This is a simple screen with theme toggle.'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}