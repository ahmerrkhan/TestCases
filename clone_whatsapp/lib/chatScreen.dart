import 'package:flutter/material.dart';

//making class of attributes
class chatModel {
  String name;
  String message;
  String avatar;
  String time;
  
  //making constructor
  chatModel({this.message,this.time,this.name,this.avatar});
}
List <chatModel> dummyData1 = [
  new chatModel(
    name: "Muhammad Ahmer",
    message: "Hello you are using Flutter",
    avatar: 'assets/WhatsApp Image 2021-04-15 at 6.56.06 PM.jpeg',
    time: '03:00 PM'
  ),
  new chatModel(
      name: "Faiz Ahmed",
      message: "Ok Done",
      avatar: 'assets/image321.png',
      time: '02:45 PM'
  ),
  new chatModel(
      name: "Sikandar Ali",
      message: "May be your parcel was delivered",
      avatar: 'assets/image123.png',
      time: '02:30 PM'
  ),
  new chatModel(
      name: "Ali Sarwar",
      message: "Send the assignment file in pdf",
      avatar: 'assets/WhatsApp Image 2021-04-15 at 6.56.06 PM.jpeg',
      time: '02:00 PM'
  ),
  new chatModel(
      name: "Sohaib Ali",
      message: "Discussing the linear regression",
      avatar: 'assets/WhatsApp Image 2021-04-15 at 6.56.06 PM.jpeg',
      time: '01:45 PM'
  ),
  new chatModel(
      name: "Hasan Shah",
      message: "Whats time please tell me is it now?",
      avatar: 'assets/image321.png',
      time: 'yesterday'
  ),
  new chatModel(
      name: "Hamza",
      message: "Give the title page of project 1",
      avatar: 'assets/WhatsApp Image 2021-04-15 at 6.56.06 PM.jpeg',
      time: 'yesterday'
  ),
  new chatModel(
      name: "Moiz Ansari",
      message: "Backend with python",
      avatar: 'assets/image123.png',
      time: 'yesterday'
  ),
];



class chatScreen extends StatefulWidget {
  @override
  _chatScreenState createState() => _chatScreenState();
}

class _chatScreenState extends State<chatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      child : ListView.builder(
          itemCount: dummyData1.length,
          itemBuilder: (context, i){
            return Column(
              children: [
                ListTile(
                  onTap: (){},
                  leading: CircleAvatar(
                    foregroundColor: Colors.grey,
                    backgroundImage: AssetImage(dummyData1[i].avatar),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(dummyData1[i].name),
                      //SizedBox(width: 50,),
                      Text(dummyData1[i].time,style: TextStyle(fontSize: 12.0),),
                    ],
                  ),
                  subtitle: Text(dummyData1[i].message),
                ),
                new Divider(height: 10.0,),
              ],
            );
          }
      ),
      ),
      floatingActionButton: FloatingActionButton(
        child: IconButton(
          onPressed: ()=>print("FAB pressed"),
          icon: Icon(Icons.message,color: Colors.white,),
          color: Color(0xff075e54),
        ),
      ),
    );
  }
}
