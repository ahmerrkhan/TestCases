import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ui_04/main.dart';
import 'package:ui_04/screens/mainScreen.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        home: mainScreen(),
      routes: <String, WidgetBuilder>{
        '/mainScreen' : (BuildContext) => new mainScreen(),
      },

    );
  }
}