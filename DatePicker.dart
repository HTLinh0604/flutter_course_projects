import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DatePicker Demo',
      home: const MyFormPage(),
    );
  }
}

class MyFormPage extends StatefulWidget {
  const MyFormPage({Key? key}) : super(key: key);

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>(); // Khóa Form
  DateTime? _selectedDate; // Biến lưu trữ ngày được chọn

  // Hàm hiển thị DatePicker
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // Ngày mặc định là ngày hiện tại
      firstDate: DateTime(2000), // Ngày bắt đầu
      lastDate: DateTime(2100), // Ngày kết thúc
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked; // Cập nhật ngày được chọn
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ví dụ DatePicker'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Nút chọn ngày
              ElevatedButton(
                onPressed: () => _selectDate(context),
                child: const Text('Chọn ngày'),
              ),
              const SizedBox(height: 16),
              // Hiển thị ngày đã chọn
              Text(
                _selectedDate != null
                    ? 'Ngày đã chọn: ${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
                    : 'Chưa chọn ngày',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              // Nút gửi Form
              ElevatedButton(
                onPressed: () {
                  if (_selectedDate == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Vui lòng chọn ngày!')),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Ngày đã gửi: ${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}',
                        ),
                      ),
                    );
                  }
                },
                child: const Text('Gửi'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}