import 'package:calculator/buttons.dart';
import 'package:flutter/material.dart';

class landingPage extends StatefulWidget {
  @override
  _landingPageState createState() => _landingPageState();
}

class _landingPageState extends State<landingPage> {
  @override
  Widget build(BuildContext context) {
    var deviceOrientation = MediaQuery.of(context).orientation;
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
        centerTitle: true,
        elevation: 10.0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blueGrey,Colors.blue],
              begin: Alignment.topRight,
              end: Alignment.topLeft,
            )
          ),
        ),
      ),
      body: buttons(),
    );
  }
}

