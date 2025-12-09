import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container Demo',
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
        title: const Text('Ví dụ Container'),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 200, // Chiều rộng của Container
          height: 200, // Chiều cao của Container
          decoration: BoxDecoration(
            color: Colors.blue, // Màu nền
            borderRadius: BorderRadius.circular(20), // Bo góc
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // Màu bóng
                spreadRadius: 5, // Độ lan của bóng
                blurRadius: 7, // Độ mờ của bóng
                offset: const Offset(0, 3), // Vị trí bóng
              ),
            ],
          ),
          alignment: Alignment.center, // Căn giữa nội dung bên trong
          child: const Text(
            'Hello, Container!',
            style: TextStyle(
              color: Colors.white, // Màu chữ
              fontSize: 18, // Kích thước chữ
              fontWeight: FontWeight.bold, // Độ đậm của chữ
            ),
          ),
        ),
      ),
    );
  }
}