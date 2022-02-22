import 'package:flutter/material.dart';
import 'package:insurance_project/screens/create.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bill',
      home: Create(),
    );
  }
}
