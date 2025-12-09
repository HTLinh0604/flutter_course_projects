import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column & Row Demo',
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
        title: const Text('Ví dụ Column & Row'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Căn giữa theo trục dọc
          crossAxisAlignment: CrossAxisAlignment.center, // Căn giữa theo trục ngang
          children: [
            const Text(
              'Đây là Column:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10), // Khoảng cách giữa các phần tử
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: const Center(
                child: Text(
                  'Box 1',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 100,
              height: 100,
              color: Colors.green,
              child: const Center(
                child: Text(
                  'Box 2',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'Box 3',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Đây là Row:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Căn đều các phần tử
              children: [
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.orange,
                  child: const Center(
                    child: Text(
                      'Box A',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.purple,
                  child: const Center(
                    child: Text(
                      'Box B',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.teal,
                  child: const Center(
                    child: Text(
                      'Box C',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}