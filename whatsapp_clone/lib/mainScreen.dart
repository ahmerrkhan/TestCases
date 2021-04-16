import 'package:flutter/material.dart';
import 'cameraScreen.dart';
import 'chatScreen.dart';
import 'statusScreen.dart';
import 'callScreen.dart';

class mainScreen extends StatefulWidget {
  @override
  _mainScreenState createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  ScrollController _scrollController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 1);
    _scrollController = new ScrollController();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (BuildContext context,bool innerBoxIsScrolled){
          return [
            SliverAppBar(
              title: Text('WhatsApp',style: TextStyle(fontSize: 23.0),),
              elevation: 1.0,
              actions: [
                IconButton(icon: Icon(Icons.search), onPressed: (){print('searched pressed');}),
                IconButton(icon: Icon(Icons.more_vert), onPressed: (){print('menu pressed');}),
              ],
              pinned: true,
              forceElevated: innerBoxIsScrolled,
              floating: true,
              bottom: TabBar(
                  controller: _tabController,
                  indicatorColor: Colors.white,
                  tabs: [
                    Icon(Icons.camera_alt),
                    Text(
                      'CHATS',
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
                    ),
                    Text(
                      'STATUS',
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
                    ),
                    Text(
                      'CALLS',
                      style: TextStyle(color: Colors.white, fontSize: 17.0),
                    ),
                  ]),
            ),
          ];
        },
        body: TabBarView(
          controller: _tabController,
          children: [
            cameraScreen(),
            chatScreen(),
            statusScreen(),
            callScreen(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).accentColor,
        child: IconButton(
          onPressed: (){print('Full functioned');},
          color: Colors.white,
          icon: Icon(Icons.message,color: Colors.white,),
        ),
      ),
    );
  }
}
