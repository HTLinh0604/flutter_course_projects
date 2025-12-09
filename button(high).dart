import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Types Demo',
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // Hàm xử lý sự kiện khi nhấn nút
  void _handleButtonPress(BuildContext context, String buttonType) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Bạn đã nhấn $buttonType!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Các loại Button'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // ElevatedButton
            ElevatedButton(
              onPressed: () => _handleButtonPress(context, 'ElevatedButton'),
              child: const Text('ElevatedButton'),
            ),
            const SizedBox(height: 10),

            // TextButton
            TextButton(
              onPressed: () => _handleButtonPress(context, 'TextButton'),
              child: const Text('TextButton'),
            ),
            const SizedBox(height: 10),

            // OutlinedButton
            OutlinedButton(
              onPressed: () => _handleButtonPress(context, 'OutlinedButton'),
              child: const Text('OutlinedButton'),
            ),
            const SizedBox(height: 10),

            // IconButton
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () => _handleButtonPress(context, 'IconButton'),
                  icon: const Icon(Icons.thumb_up),
                  color: Colors.blue,
                ),
                const Text('IconButton'),
              ],
            ),
            const SizedBox(height: 10),

            // FloatingActionButton (hiển thị ở góc dưới bên phải)
            const Text(
              'FloatingActionButton:',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _handleButtonPress(context, 'FloatingActionButton'),
        child: const Icon(Icons.add),
      ),
    );
  }
}