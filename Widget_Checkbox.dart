import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Checkbox Demo',
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
  bool _isChecked1 = false; // Trạng thái của Checkbox 1
  bool _isChecked2 = false; // Trạng thái của Checkbox 2

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ví dụ Checkbox'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Checkbox 1
            Row(
              children: [
                Checkbox(
                  value: _isChecked1,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked1 = value ?? false; // Cập nhật trạng thái
                    });
                  },
                ),
                const Text('Lựa chọn 1'),
              ],
            ),
            // Checkbox 2
            Row(
              children: [
                Checkbox(
                  value: _isChecked2,
                  onChanged: (bool? value) {
                    setState(() {
                      _isChecked2 = value ?? false; // Cập nhật trạng thái
                    });
                  },
                ),
                const Text('Lựa chọn 2'),
              ],
            ),
            const SizedBox(height: 20),
            // Hiển thị trạng thái của các Checkbox
            Text(
              'Trạng thái:\n'
              'Lựa chọn 1: ${_isChecked1 ? 'Đã chọn' : 'Chưa chọn'}\n'
              'Lựa chọn 2: ${_isChecked2 ? 'Đã chọn' : 'Chưa chọn'}',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}