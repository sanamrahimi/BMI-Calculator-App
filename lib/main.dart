import 'package:bmi_calculator/screens/input_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff0a0d22),
        scaffoldBackgroundColor: Color(0xff0a0d22),
      ),
      home: InputPage(),
    );
  }
}
