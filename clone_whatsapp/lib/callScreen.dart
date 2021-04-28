import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';


class callModel{
  String name;
  String avatar;
  String details;
  Icon icons1;
 

  //making constructors
   callModel({this.avatar,this.name,this.details,this.icons1});
}

List<callModel> dummyData2 = [
  new callModel(
    name: 'Saeed',
    avatar: 'assets/WhatsApp Image 2021-04-15 at 6.56.06 PM.jpeg',
    details: 'Today, 11:45 PM',
    icons1: Icon(Icons.add_call),

  ),
  new callModel(
    name: 'Hamza',
    avatar: 'assets/image321.png',
    details: 'Today, 11:45 PM',
    icons1: Icon(Icons.add_call),


  ),
  new callModel(
    name: 'Yousuf Khan',
    avatar: 'assets/WhatsApp Image 2021-04-15 at 6.56.06 PM.jpeg',
    details: '(2) Today, 09:30 AM',
    icons1: Icon(Icons.add_call),

  ),
  new callModel(
    name: 'Sajid Ali',
    avatar: 'assets/image321.png',
    details: '(2) yesterday, 11:30 PM',
    icons1: Icon(Icons.add_call),

  ),
  new callModel(
    name: 'Ali Raza',
    avatar: 'assets/WhatsApp Image 2021-04-15 at 6.56.06 PM.jpeg',
    details: 'April 12, 10:45 AM',
    icons1: Icon(Icons.add_call),


  ),

];

class callScreen extends StatefulWidget {
  @override
  _callScreenState createState() => _callScreenState();
}

class _callScreenState extends State<callScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView.builder(
            itemCount: dummyData2.length,
            itemBuilder: (context,i){
              return Column(
                children: [
                  ListTile(
                     leading: CircleAvatar(
                       foregroundColor: Colors.grey,
                       backgroundImage: AssetImage(dummyData2[i].avatar),
                     ),
                    title: Text(dummyData2[i].name),
                    subtitle: Row(
                      children: [
                        Icon(Feather.arrow_down_left,size: 18.0,color: Color(0xff075e54),),
                        Text(dummyData2[i].details),
                      ],
                    ),
                    trailing: IconButton(
                      color: Color(0xff075e54),
                        icon: Icon(Icons.phone,), onPressed: ()=>print('call pressed'),),
                  ),
                  new Divider(height: 10.0,),
                ],
              );
            }),
      ),
      floatingActionButton: FloatingActionButton(
        child: IconButton(
          onPressed: ()=>print("calls  pressed"),
          icon: Icon(Icons.phone,color: Colors.white,),
          color: Color(0xff075e54),
        ),
      ),
    );
  }
}
