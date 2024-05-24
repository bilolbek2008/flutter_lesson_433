import 'package:flutter/material.dart';
import 'package:flutter_lesson_43/progect.dart';
import 'package:flutter_lesson_43/progect3.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
// //1 - mashq
//         home: ListScreen());

    // 2 - mashq
    home: ImageScreen());
  }
}
