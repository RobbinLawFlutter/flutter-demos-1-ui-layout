import 'package:flutter/material.dart';

//This app shows how to display an asset image.
//In order to do this the images have to be
//in a "images" folder in the project
//and pubspec.yaml has to be changed to expose them.

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Asset Image"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image.asset('./images/bottle.jpg'),
        ),
      ),
    );
  }
}
