import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Widget chính của ứng dụng
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AppBar Demo',
      home: const MyHomePage(),
    );
  }
}

// Trang chủ với AppBar
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar: Thanh tiêu đề trên cùng
      appBar: AppBar(
        title: const Text('Ví dụ AppBar'), // Tiêu đề
        centerTitle: true, // Căn giữa tiêu đề
        backgroundColor: Colors.blue, // Màu nền
        elevation: 4, // Độ cao bóng đổ
        actions: [
          // Các nút bên phải AppBar
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Xử lý khi nhấn nút search
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Bạn đã nhấn nút tìm kiếm!')),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // Xử lý khi nhấn nút more
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Bạn đã nhấn nút menu!')),
              );
            },
          ),
        ],
      ),
      // Nội dung chính
      body: const Center(
        child: Text(
          'Đây là nội dung trang với AppBar!',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}