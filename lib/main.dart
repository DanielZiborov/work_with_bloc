import 'package:flutter/material.dart';
import 'package:work_with_bloc/moduls/dogs/screens/dogs_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      title: 'Flutter Demo',
      home: DogsScreen(),
    );
  }
}
