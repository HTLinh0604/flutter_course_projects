import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextField Event Handling',
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
  final TextEditingController _controller = TextEditingController(); // Controller để quản lý TextField
  String _submittedText = ''; // Lưu trữ văn bản khi nhấn nút gửi

  @override
  void dispose() {
    _controller.dispose(); // Giải phóng controller khi không cần thiết
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextField Event Handling'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // TextField với Controller
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Nhập văn bản',
                hintText: 'Nhập gì đó...',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                // Xử lý khi văn bản thay đổi
                print('Văn bản thay đổi: $value');
              },
              onSubmitted: (value) {
                // Xử lý khi nhấn Enter
                setState(() {
                  _submittedText = value;
                });
                print('Văn bản đã gửi: $value');
              },
            ),
            const SizedBox(height: 20),
            // Nút gửi
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _submittedText = _controller.text; // Lấy giá trị từ TextField
                });
                print('Văn bản đã gửi: ${_controller.text}');
              },
              child: const Text('Gửi'),
            ),
            const SizedBox(height: 20),
            // Hiển thị văn bản đã gửi
            Text(
              'Văn bản đã gửi: $_submittedText',
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}