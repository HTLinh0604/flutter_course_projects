import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RadioListTile Demo',
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
  String? _selectedOption; // Biến lưu giá trị được chọn

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ví dụ RadioListTile'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // RadioListTile 1
            RadioListTile<String>(
              title: const Text('Lựa chọn 1'),
              value: 'Option 1',
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value; // Cập nhật giá trị được chọn
                });
              },
            ),
            // RadioListTile 2
            RadioListTile<String>(
              title: const Text('Lựa chọn 2'),
              value: 'Option 2',
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value; // Cập nhật giá trị được chọn
                });
              },
            ),
            // RadioListTile 3
            RadioListTile<String>(
              title: const Text('Lựa chọn 3'),
              value: 'Option 3',
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value; // Cập nhật giá trị được chọn
                });
              },
            ),
            const SizedBox(height: 20),
            // Hiển thị lựa chọn đã chọn
            Text(
              _selectedOption != null
                  ? 'Bạn đã chọn: $_selectedOption'
                  : 'Chưa có lựa chọn nào được chọn',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}