import 'package:flutter/material.dart';
import 'package:wtw/global.dart';
import './newuser/Start.dart';
import './main/hub.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "What's the Wave?",
      home: Start(),
      debugShowCheckedModeBanner: false,
    );
  }
}
