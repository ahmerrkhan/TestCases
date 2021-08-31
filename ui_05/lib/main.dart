import 'package:flutter/material.dart';
import 'mainScreen.dart';
import 'register.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: <String,WidgetBuilder>{
        '/mainScreen': (BuildContext)=>new mainScreen(),
        '/register': (BuildContext)=>new register(),
      },
      home: mainScreen(),
    );
  }
}
