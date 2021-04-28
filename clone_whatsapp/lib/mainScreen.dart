import 'package:camera_platform_interface/src/types/camera_description.dart';
import 'package:flutter/material.dart';
import 'cameraScreen.dart';
import 'chatScreen.dart';
import 'statusScreen.dart';
import 'callScreen.dart';
import 'dart:async';
import 'package:camera/camera.dart';

class mainScreen extends StatefulWidget {
  var cameras;
 // mainScreen(this.cameras);
  //  mainScreen(List<CameraDescription> cameras);
mainScreen(this.cameras);
  @override
  _mainScreenState createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> with SingleTickerProviderStateMixin {

  //controllers for tab and scrolling
  TabController _tabController;
  ScrollController _scrollController;

  //initialize controllers
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1,length: 4);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:NestedScrollView(
       controller: _scrollController,
       headerSliverBuilder: (BuildContext, bool isTrue){
         return [
           SliverAppBar(          //using sliver appbar for collapsing appbar like whatsapp
             title: Text('WhatsApp'),
             elevation: 0.7,
             actions: [
               IconButton(
                   icon: Icon(Icons.search), onPressed: ()=>print('search pressed!'),
               ),
               IconButton(
                 icon: Icon(Icons.more_vert), onPressed: ()=>print('more_vert pressed!'),
               ),
             ],
             pinned: true,
             floating: true,
             forceElevated: isTrue,
             bottom: TabBar(
               controller: _tabController,
               tabs: [
                 Icon(Icons.camera_alt,size: 25.0,),
                 Text("CHATS",style: TextStyle(fontSize: 18.0),),
                 Text("STATUS",style: TextStyle(fontSize: 18.0),),
                 Text("CALLS",style: TextStyle(fontSize: 18.0),),
               ],
             ),
           ),
         ];
       },
       body: TabBarView(
         controller: _tabController,
         children: [
           cameraScreen(widget.cameras),
           chatScreen(),
           statusScreen(),
           callScreen(),

         ],
       ),
      ),

    );
  }
}
