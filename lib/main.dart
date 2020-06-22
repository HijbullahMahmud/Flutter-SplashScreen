import 'dart:async';

import 'package:flutter/material.dart';
import 'package:fluttersplashscreen/screens/home_screen.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.blueAccent, accentColor: Colors.redAccent),
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3),()
    => Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (BuildContext context) => HomeScreen())));

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.blueAccent),
          ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: Container(
                child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50,
                     /* child: Icon(Icons.live_tv, color: Colors.redAccent, size: 50,),*/
                      backgroundImage: AssetImage("assets/app_logo.png"),
                    ),
                    Padding(padding: EdgeInsets.only(top: 15)),
                    Text("Al Quran - English", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.normal),),
                  ],
                ),
              ),
            ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: <Widget>[
                CircularProgressIndicator(backgroundColor: Colors.white,),
                Padding(padding: EdgeInsets.only(top: 10)),
                Text("Al Quran - English Translation with Audio", style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal),)
              ],
            ),
          )
          ],
        )
        ],
      ),
    );
  }
}


