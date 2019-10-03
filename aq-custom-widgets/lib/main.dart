// this app shows themes
// go to dribbble.com and search for 'simple bmi'
// go to colorzilla.com and download the color picker
// use the picker to get the code for the primary and background color of the app

import 'package:flutter/material.dart';
import 'input.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0B1034),
        // the 0xFF is the transparency, then 0B Red, 10 Green, 34 Blue
        scaffoldBackgroundColor: Color(0xFF0B1034),
      ),
      home: MyFirstPage(),
    );
  }
}
