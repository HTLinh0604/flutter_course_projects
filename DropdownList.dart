import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DropdownList Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? _selectedItem; // Biến lưu giá trị được chọn
  final List<String> _items = ['Item 1', 'Item 2', 'Item 3', 'Item 4']; // Danh sách các mục

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ví dụ DropdownList'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // DropdownButton
            DropdownButton<String>(
              value: _selectedItem, // Giá trị hiện tại
              hint: const Text('Chọn một mục'), // Gợi ý khi chưa chọn gì
              isExpanded: true, // Mở rộng để vừa với chiều ngang
              items: _items.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedItem = newValue; // Cập nhật giá trị được chọn
                });
              },
            ),
            const SizedBox(height: 20),
            // Hiển thị giá trị được chọn
            Text(
              _selectedItem != null
                  ? 'Bạn đã chọn: $_selectedItem'
                  : 'Chưa có mục nào được chọn',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}