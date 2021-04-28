import 'package:flutter/material.dart';
import 'mainScreen.dart';
import 'main.dart';
import 'package:camera/camera.dart';
import 'dart:async';

class cameraScreen extends StatefulWidget {
  List<CameraDescription> cameras;
  
  cameraScreen(this.cameras);

  @override
  _cameraScreenState createState() => _cameraScreenState();
}

class _cameraScreenState extends State<cameraScreen> {
  
  CameraController controller;
  @override
  void initState() {
    super.initState();
    controller = new CameraController(widget.cameras[0], ResolutionPreset.medium);
    controller.initialize().then((_) {
      if(!mounted){
        return;
      }
      setState(() {
        
      });
    }
    );
  }
  @override
  void dispose() {
   controller?.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    if(!controller.value.isInitialized){
      return new Container();
    }
    return new AspectRatio(
        aspectRatio: controller.value.aspectRatio,
      child: new CameraPreview(controller),
    );
  }
}
