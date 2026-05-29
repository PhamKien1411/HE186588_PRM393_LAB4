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

            /* * GIẢI THÍCH SỬA LỖI THEO YÊU CẦU CỦA LAB:
             * - Nguyên nhân: Bản chất Column không giới hạn chiều cao cho các widget con,
             * trong khi ListView mặc định muốn chiếm vô tận không gian trục dọc => Gây ra xung đột kích thước vô hạn (Unbounded height).
             * - Giải pháp: Bọc ListView lại bằng widget `Expanded`. Widget này sẽ tính toán phần diện tích
             * còn lại khả dụng của màn hình thiết bị và ép ListView chỉ được phép hiển thị gọn trong phạm vi đó[cite: 55].
             */
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