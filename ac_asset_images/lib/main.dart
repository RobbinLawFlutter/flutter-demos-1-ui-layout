import 'package:flutter/material.dart';

// display an asset image
// drag and drop an image to appicon.co then generate a zip file
// in studio navigate to android/app/src/main/res
void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //first level widget of Material Design
      home: Scaffold(
        //default route
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Asset Image & Launch Icon"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image(image: AssetImage('images/bottle.jpg')),
        ),
      ),
    );
  }
}
