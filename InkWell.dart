import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InkWell Demo',
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
        title: const Text('Ví dụ InkWell'),
        centerTitle: true,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Bạn đã nhấn vào InkWell!')),
            );
          },
          borderRadius: BorderRadius.circular(12), // Bo góc hiệu ứng nhấn
          splashColor: Colors.blue.withOpacity(0.3), // Màu hiệu ứng nhấn
          child: Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.blue, // Màu nền của Container
              borderRadius: BorderRadius.circular(12), // Bo góc
            ),
            alignment: Alignment.center,
            child: const Text(
              'Nhấn vào đây',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}