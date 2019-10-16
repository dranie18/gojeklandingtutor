

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/landingpage_view.dart';

class LauncherPage extends StatefulWidget{
  @override
  _LauncherPageState createState()=>new _LauncherPageState();



}

class _LauncherPageState extends State<LauncherPage> {

  startlaunching() async{
    var duration = const Duration(seconds: 1);
    return new Timer(duration, (){
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_){
        return new LandingPage();
      }));
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Center(
        child: new Image.asset(
            "assets/img_gojek_logo.png",
          height: 100.0,
          width: 200.0,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
//    startlaunching();
  }
}