import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Button Demo',
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
        title: const Text('Ví dụ Button'),
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
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Bạn đã nhấn ElevatedButton!')),
                );
              },
              child: const Text('ElevatedButton'),
            ),
            const SizedBox(height: 10),

            // TextButton
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Bạn đã nhấn TextButton!')),
                );
              },
              child: const Text('TextButton'),
            ),
            const SizedBox(height: 10),

            // OutlinedButton
            OutlinedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Bạn đã nhấn OutlinedButton!')),
                );
              },
              child: const Text('OutlinedButton'),
            ),
            const SizedBox(height: 10),

            // IconButton
            IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Bạn đã nhấn IconButton!')),
                );
              },
              icon: const Icon(Icons.thumb_up),
              color: Colors.blue,
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
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Bạn đã nhấn FloatingActionButton!')),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}