import 'package:flutter/material.dart';
import 'newScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animations',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xff1f2427),
        scaffoldBackgroundColor: Color(0xff1f2427),
      ),
      home: newScreen(),
    );
  }
}