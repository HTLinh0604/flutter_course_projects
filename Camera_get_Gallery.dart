import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Camera & Gallery Demo',
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
  File? _image; // Biến lưu trữ ảnh đã chọn
  final ImagePicker _picker = ImagePicker(); // Khởi tạo ImagePicker

  // Hàm chụp ảnh từ Camera
  Future<void> _getImageFromCamera() async {
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  // Hàm lấy ảnh từ Gallery
  Future<void> _getImageFromGallery() async {
    final XFile? pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Camera & Gallery Demo'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Hiển thị ảnh đã chọn
            _image != null
                ? Image.file(
                    _image!,
                    width: 300,
                    height: 300,
                    fit: BoxFit.cover,
                  )
                : const Text(
                    'Chưa có ảnh nào được chọn',
                    style: TextStyle(fontSize: 16),
                  ),
            const SizedBox(height: 20),
            // Nút chụp ảnh từ Camera
            ElevatedButton.icon(
              onPressed: _getImageFromCamera,
              icon: const Icon(Icons.camera),
              label: const Text('Chụp ảnh từ Camera'),
            ),
            const SizedBox(height: 10),
            // Nút lấy ảnh từ Gallery
            ElevatedButton.icon(
              onPressed: _getImageFromGallery,
              icon: const Icon(Icons.photo),
              label: const Text('Lấy ảnh từ Gallery'),
            ),
          ],
        ),
      ),
    );
  }
}