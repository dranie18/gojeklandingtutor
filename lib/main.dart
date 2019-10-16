import 'package:flutter/material.dart';
import 'package:flutter_app/constant.dart';
import 'package:flutter_app/launcher_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gojek',
      theme: ThemeData(
       fontFamily: 'NeoSans',
        primaryColor: GojekPallete.green,
        accentColor: GojekPallete.green
      ),
      home: new LauncherPage(),
    );
  }
}


