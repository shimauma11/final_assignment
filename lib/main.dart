import 'package:flutter/material.dart';
import 'package:f_ass/screens/screen_a.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ScreenA(),
    );
  }
}
