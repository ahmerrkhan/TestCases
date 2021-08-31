import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class register extends StatefulWidget {
  @override
  _registerState createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Container(
             child: Stack(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15.0,110.0,0.0,0),
                      child: Text("Sign Up",style: GoogleFonts.lato(fontSize: 55.0,fontWeight: FontWeight.bold),),
                    ),),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(200.0,110.0,0.0,0),
                        child: Text(".",style: TextStyle(fontSize:55,color: Colors.green)),
                      ),
                    ),
                ],
             ),
           ),
           Container(
               padding: EdgeInsets.only(top:33.0,right: 20.0,left: 20.0),
               child: Column(
                 children: [
                   TextField(
                     decoration: InputDecoration(
                         focusedBorder: UnderlineInputBorder(
                           borderSide: BorderSide(color: Colors.grey),
                         ),
                         labelStyle: TextStyle(color: Colors.grey,fontSize: 20.0),
                         labelText: "EMAIL"
                     ),
                   ),
                   SizedBox(height: 35.0,),
                   TextField(
                     obscureText: true,
                     decoration: InputDecoration(
                       labelText: "PASSWORD",
                       labelStyle: TextStyle(
                         color: Colors.grey,
                         fontSize: 25.0,
                         fontWeight: FontWeight.bold,
                       ),
                       focusedBorder: UnderlineInputBorder(
                         borderSide: BorderSide(color: Colors.grey),
                       ),
                     ),
                   ),
                   SizedBox(height: 35.0,),
                   TextField(
                     obscureText: true,
                     decoration: InputDecoration(
                       labelText: "NICKNAME",
                       labelStyle: TextStyle(
                         color: Colors.grey,
                         fontSize: 25.0,
                         fontWeight: FontWeight.bold,
                       ),
                       focusedBorder: UnderlineInputBorder(
                         borderSide: BorderSide(color: Colors.grey),
                       ),
                     ),
                   ),
                   SizedBox(height: 45.0,),
                   MaterialButton(
                     height: 60.0,
                     minWidth: 510.0,
                     onPressed: (){},
                     child: Text("Sign Up",style: TextStyle(fontSize:18.0,color: Colors.white),),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(20.0),
                     ),
                     color: Colors.green,
                   ),
                   SizedBox(height: 25.0,),
                   MaterialButton(
                     height: 60.0,
                     minWidth: 510.0,
                     onPressed: (){
                       Navigator.pop(context);
                     },
                     child: Text("Go Back",style: TextStyle(fontSize:16.0,color: Colors.black),),
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(20.0),side: BorderSide(color: Colors.black),
                     ),
                   ),

                 ],
               ),
             ),
        ],
      ),
    );
  }
}
