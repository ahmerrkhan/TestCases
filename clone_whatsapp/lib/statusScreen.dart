import 'package:flutter/material.dart';

class statusScreen extends StatefulWidget {
  @override
  _statusScreenState createState() => _statusScreenState();
}

class _statusScreenState extends State<statusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         Card(
           color: Colors.white,
           elevation: 0.0,
           child: Padding(
             padding: const EdgeInsets.all(8.0),
               child: ListTile(
               leading: Stack(
                    children: <Widget>[
                     CircleAvatar(
                       foregroundColor: Colors.grey,
                      backgroundImage: AssetImage('assets/WhatsApp Image 2021-04-15 at 6.56.06 PM.jpeg'),
                     ),
                 Positioned(
                     bottom: 0.0,
                     right: 1.0,
                     child: Container(
                       height: 20,
                       width: 20,
                       child: Icon(
                         Icons.add,
                         color: Colors.white,
                         size: 15,
                       ),
                       decoration: BoxDecoration(
                         color: Colors.green,
                         shape: BoxShape.circle,
                       ),
                     ),
                 ),
                    ]
               ),
                 title: Text(
                   "My Status",
                   style: TextStyle(fontWeight: FontWeight.bold),
                 ),
                 subtitle: Text("Tap to add status update"),
               ),
               )
           ),
          Container(
              color: Colors.grey[200],
              height: 20.0,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left:15.0),
                child: Text('Recent Updates',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green,),),
              ),
            ),
          ListTile(

            leading: CircleAvatar(
              foregroundColor: Colors.grey,
              backgroundImage: AssetImage('assets/WhatsApp Image 2021-04-15 at 6.56.06 PM.jpeg'),
            ),
            title: Text('Rohail Asad'),
            subtitle: Text('just now'),
          ),
          new Divider(height: 10.0,),
          ListTile(

            leading: CircleAvatar(
              foregroundColor: Colors.grey,
              backgroundImage: AssetImage('assets/WhatsApp Image 2021-04-15 at 6.56.06 PM.jpeg'),
            ),
            title: Text('Zahid'),
            subtitle: Text('15 mins ago'),
          ),
          new Divider(height: 10.0,),
          ListTile(

            leading: CircleAvatar(
              foregroundColor: Colors.grey,
              backgroundImage: AssetImage('assets/image321.png'),
            ),
            title: Text('Mudassir'),
            subtitle: Text('30 mins ago'),
          ),
          new Divider(height: 10.0,),
          ListTile(

            leading: CircleAvatar(
              foregroundColor: Colors.grey,
              backgroundImage: AssetImage('assets/WhatsApp Image 2021-04-15 at 6.56.06 PM.jpeg'),
            ),
            title: Text('Rizwan Ubit'),
            subtitle: Text('31 mins ago'),
          ),
          new Divider(height: 10.0,),
          ListTile(

            leading: CircleAvatar(
              foregroundColor: Colors.grey,
              backgroundImage: AssetImage('assets/image321.png'),
            ),
            title: Text('Salman Ubit'),
            subtitle: Text('1 hour ago'),
          ),

        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: IconButton(
          onPressed: ()=>print("status camera pressed"),
          icon: Icon(Icons.camera_alt_outlined,color: Colors.white,),
          color: Colors.green[400],
        ),
      ),
    );
  }
}
