import 'package:flutter/material.dart';

class landingPage extends StatefulWidget {
  @override
  _landingPageState createState() => _landingPageState();
}

class _landingPageState extends State<landingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Some Gridview'),
      ),
      body: GridView.count(
        padding: EdgeInsets.all(10.0),
        crossAxisCount: 10,
        mainAxisSpacing: 0.0,
        crossAxisSpacing: 0.0,
        children: [
            myCard('Hello World', Icons.add,Colors.black12),
            myCard('Hello World', Icons.add,Colors.amberAccent),
            myCard('Hello World', Icons.add,Colors.blue),
            myCard('Hello World', Icons.add,Colors.redAccent),
            myCard('Hello World', Icons.add,Colors.orangeAccent),
            myCard('Hello World', Icons.add,Colors.green),
        ],
      ),
      bottomNavigationBar: GestureDetector(
        onTap: (){
          print('ok pressed');
        },
      child : Container(
        child: Center(
          child: Text(
            'Buy Now',
            style: TextStyle(fontSize: 20.0, color: Colors.white),
          ),
        ),
        height: 56,
        width: 100,
        decoration: BoxDecoration(color: Colors.red),
      ),
    ),
    );
  }
}
Widget myCard(String title, IconData icon,Color mycolor){
  return GestureDetector(
    onTap: (){
      print('ok tapped');
    },
    child : Container(
    margin: EdgeInsets.all(10.0),
    height: 45.0,
    width: 50.0,
    decoration: BoxDecoration(color: mycolor,borderRadius: BorderRadius.circular(13.0)),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(title),
        SizedBox(height: 10.0,),
        Icon(icon),
      ],
    ),
  ),
  );
}
