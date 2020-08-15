import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:theertha/Home.dart';


void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new SplashScreen(),
    routes: <String, WidgetBuilder>{
      '/HomeScreen': (BuildContext context) => new HomeScreen()
    },
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => new _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/HomeScreen');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.orange[100],
              Colors.orange[100],
              Colors.brown[100],
              //Colors.orange[100],
              Colors.brown[100],
            ],
            stops: [0.1, 0.4, 0.7, 0.9],
          ),
        ),
        child: new Center(
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 150),
                ),
                Image.asset('assets/logo.png',width: 155,height: 155,),
                Padding(
                  padding: EdgeInsets.only(top: 100),
                ),
                Text("From AiderTec",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,letterSpacing: 1,color: Colors.black54),)

              ],
            )
        ),
      ),
    );
  }
}