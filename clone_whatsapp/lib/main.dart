import 'package:flutter/material.dart';
import 'mainScreen.dart';
import 'package:camera/camera.dart';
import 'dart:async';

List<CameraDescription> cameras;

Future<Null> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp Clone',
      theme: ThemeData(
        primaryColor: Color(0xff075e54),
        accentColor:  Color(0xff075e54),
    ),
      //connecting the main screen to main.dart
      home: mainScreen(cameras),
    );
  }
}

