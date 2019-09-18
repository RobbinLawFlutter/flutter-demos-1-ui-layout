import 'package:flutter/material.dart';

//https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e
// using Avitar Widgets & Manipulating Text Properties
// also loading custom fonts
// google fonts.google.com download the font you want and unzip
// create a directory in studio called "fonts" and drag and drop
// the ttf file to the new directory
// now edit pubspec.yaml to add the font same way as images
void main() {
  runApp(
    myApp(),
  );
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //first level widget of Material Design
      home: Scaffold(
        //default route
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Avitar & Text Properties"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          //crossAxisAlignment: CrossAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.end,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage('images/moon.jpg'),
            ),
            Text(
              'moon pic',
              style: TextStyle(
                fontFamily: 'Chilanka-Regular',
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
