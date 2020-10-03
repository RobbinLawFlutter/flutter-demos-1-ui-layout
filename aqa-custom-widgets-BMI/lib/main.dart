//This app shows themes in this main file.
//By default flutter uses a light blue theme.

//Themes documentation from flutter
//https://flutter.dev/docs/cookbook/design/themes

//Go to dribbble.com and search for 'simple bmi'.
//Go to colorzilla.com and download the color picker into Chrome.
//Use the picker to get the code for the primary
//and background color of the app.

import 'package:flutter/material.dart';
import 'first.dart';
import 'second.dart';
import 'third.dart';
import 'fourth.dart';
import 'fifth.dart';
import 'sixth.dart';
import 'seventh.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //.dark() gives the material app dark theme
      //.copyWith() allows us to change only certain
      //dark theme defaults.
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0B1034),
        // the 0xFF is the transparency (opaqe),
        //then 0B Red, 10 Green, 34 Blue
        scaffoldBackgroundColor: Color(0xFF0B1034),
      ),
      home: MyFifthPage(),
    );
  }
}
