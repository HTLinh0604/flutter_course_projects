import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hiển thị Text'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Xin chào, đây là một đoạn text đơn giản!',
          style: TextStyle(
            fontSize: 20, // Kích thước chữ
            fontWeight: FontWeight.bold, // Độ đậm của chữ
            color: Colors.blue, // Màu chữ
          ),
        ),
      ),
    );
  }
}