import 'package:flutter/material.dart';
import 'newScreen.dart';

class animationScreen extends StatefulWidget {
  @override
  _animationScreenState createState() => _animationScreenState();
}

class _animationScreenState extends State<animationScreen> {
  double _width = 100;
  double _height = 100;
  Color _color = Colors.blue;
  double _opacity = 1.0;  //opacity>=0.1 && opacity<=1.0 every time


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Here Using !'),
         centerTitle: true,
      ),
      body: Center(
        child: AnimatedOpacity(
          duration: Duration(seconds: 3),
         child: Container(
              height: _height,
              width: _width,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: BorderRadius.circular(14.0),
              ),
      ),
         opacity: _opacity,
            ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueGrey,
        child: IconButton(
          onPressed: (){
            setState(() {
              _opacity = _opacity == 1.0 ? 0.2 : 1.0;
            });
          },
          icon: Icon(Icons.add_circle),
        ),
      ),
    );
  }
}
