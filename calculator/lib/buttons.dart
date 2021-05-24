import 'package:flutter/material.dart';
import 'landingPage.dart';

class buttons extends StatefulWidget {
  @override
  _buttonsState createState() => _buttonsState();
}

class _buttonsState extends State<buttons> {

  int firstNum;
  int secondNum;
  String textToDisplay = "";
  String res ;
  String operator;

  void buttonclicked(String btntext){

    if(btntext=="C"){
      textToDisplay = "";
      firstNum = 0;
      secondNum = 0;
      res = "";
    }
    else if(btntext =="-" || btntext == "-" || btntext == "x" || btntext == "/"){
      firstNum = int.parse(textToDisplay);
      res = "";
      operator = btntext;
    }
    else if(btntext=="="){
      secondNum = int.parse(textToDisplay);
      if(operator=="+"){
        res = (firstNum +secondNum).toString();
      }
      if(operator=="-"){
        res = (firstNum - secondNum).toString();
      }
      if(operator=="x"){
        res = (firstNum *secondNum).toString();
      }
      if(operator=="/"){
        res = (firstNum /secondNum).toString();
      }
    }
    else{
      res = int.parse(textToDisplay + btntext).toString();
    }
    setState(() {
      textToDisplay = res;
    });
  }

  Widget buildButton(String btnval) {
    return 
      Expanded(
      child: OutlineButton(
        padding: EdgeInsets.all(25.0),
        child: Text(
          '$btnval',
          style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
        ),
        onPressed: () => buttonclicked(btnval),
      ),
    );
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
              child: Container(
                padding: EdgeInsets.only(bottom: 12.0,right: 10.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  '$textToDisplay',
                  style: TextStyle(fontSize: 62.0),
                ),
              )),
          Row(
            children: [
              buildButton('9'),
              buildButton('8'),
              buildButton('7'),
              buildButton('+'),
            ],
          ),
          Row(
            children: [
              buildButton('6'),
              buildButton('5'),
              buildButton('4'),
              buildButton('-'),
            ],
          ),
          Row(
            children: [
              buildButton('3'),
              buildButton('2'),
              buildButton('1'),
              buildButton('x'),
            ],
          ),
          Row(
            children: [
              buildButton('C'),
              buildButton('0'),
              buildButton('='),
              buildButton('/'),
            ],
          ),
        ],
      ),
    );

  }
}

