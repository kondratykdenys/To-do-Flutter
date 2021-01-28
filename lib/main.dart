import 'package:flutter/material.dart';
import 'package:flutter_to_do_list/constants.dart';
import 'package:flutter_to_do_list/screens/HomePage/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kBackgroundColor,
        fontFamily: 'SFProDisplay',
      ),
      home: HomePage(),
    );
  }
}

