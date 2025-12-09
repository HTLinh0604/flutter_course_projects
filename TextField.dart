import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextField Demo',
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
  String _inputText = ''; // Biến lưu trữ giá trị nhập từ TextField

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ví dụ TextField'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // TextField để nhập dữ liệu
            TextField(
              onChanged: (value) {
                setState(() {
                  _inputText = value; // Cập nhật giá trị khi người dùng nhập
                });
              },
              decoration: const InputDecoration(
                labelText: 'Nhập văn bản',
                hintText: 'Nhập gì đó...',
                border: OutlineInputBorder(), // Viền cho TextField
              ),
            ),
            const SizedBox(height: 20),
            // Hiển thị văn bản đã nhập
            Text(
              'Bạn đã nhập: $_inputText',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}