import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class mainScreen extends StatefulWidget {
  @override
  _mainScreenState createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
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
                    child: Text("Hello",style: GoogleFonts.lato(fontSize: 55.0,fontWeight: FontWeight.bold),),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15.0,170.0,0.0,0),
                    child: Text("There",style: GoogleFonts.lato(fontSize: 55.0,fontWeight: FontWeight.bold),),
                  ),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(166.0,170.0,0.0,0),
                    child: Text(".",style: GoogleFonts.lato(fontSize: 55.0,fontWeight: FontWeight.bold,color: Colors.green),),
                  ),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 33.0,left: 20.0,right: 20.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: "EMAIL",
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
                SizedBox(height: 30.0,),
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
                SizedBox(height: 18.0,),
                Container(
                  alignment: Alignment(1.0,0.0),
                  child: InkWell(
                    onTap: (){},
                    child: Text("Forget Password",style: TextStyle(color: Colors.green,fontSize: 18.0,fontWeight: FontWeight.bold),),
                  ),
                ),
                SizedBox(height: 20.0,),
                MaterialButton(
                  height: 70.0,
                  minWidth: 510.0,
                  onPressed: (){},
                  child: Text("Login",style: TextStyle(fontSize:18.0,color: Colors.white),),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  color: Colors.green,
                ),
                SizedBox(height: 20.0,),
                MaterialButton(
                  height: 70.0,
                  minWidth: 510.0,
                  onPressed: (){},
                  child: Text("Login with Facebook",style: TextStyle(fontSize:16.0,color: Colors.black),),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),side: BorderSide(color: Colors.black),
                  ),
                ),
                SizedBox(height: 70.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("New to Spotify?",style: TextStyle(color: Colors.grey,fontSize: 20.0),),
                    SizedBox(width: 5.0,),
                    Container(
                      child: InkWell(
                        onTap: (){
                          Navigator.of(context).pushNamed('/register');
                        },
                        child: Text("Register",style: TextStyle(color: Colors.green,fontSize: 20.0,fontWeight: FontWeight.bold),),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
