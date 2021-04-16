import 'package:flutter/material.dart';

class chatModel {
  String name;
  String message;
  String time;
  String avatar;

  chatModel({this.message, this.avatar, this.name, this.time});
}

List<chatModel> dummyData = [
  new chatModel(
    message: 'Hey! You are using Flutter',
    avatar: 'assets/WhatsApp Image 2021-04-15 at 6.56.06 PM.jpeg',
    name: 'Meer Taqi Meer',
    time: '01:30',
  ),
  new chatModel(
    message: 'Hey! You are using Flutter',
    avatar: 'assets/WhatsApp Image 2021-04-15 at 6.56.06 PM.jpeg',
    name: 'Muhammad Ahmer',
    time: '01:30',
  ),
  new chatModel(
      message: 'Hey! You are using Flutter',
      avatar: 'assets/WhatsApp Image 2021-04-15 at 6.56.06 PM.jpeg',
      name: 'Jaun Elia',
      time: '01:30'),
  new chatModel(
    message: 'Hey! You are using Flutter',
    avatar: 'assets/WhatsApp Image 2021-04-15 at 6.56.06 PM.jpeg',
    name: 'Muhammad Ahmer',
    time: '01:30',
  ),
  new chatModel(
    message: 'Hey! You are using Flutter',
    avatar: 'assets/WhatsApp Image 2021-04-15 at 6.56.06 PM.jpeg',
    name: 'Ali Sarwar',
    time: '01:30',
  ),
];

class chatScreen extends StatefulWidget {
  @override
  _chatScreenState createState() => _chatScreenState();
}

class _chatScreenState extends State<chatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, i) => Column(
        children: [
          new ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).accentColor,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage(dummyData[i].avatar),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  dummyData[i].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 150,),
                Text(
                  dummyData[i].time,
                  style: TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
              ],
            ),
            subtitle: Text(
              dummyData[i].message,
              style: TextStyle(fontSize: 15.0, color: Colors.grey),
            ),
          ),
          new Divider(
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
