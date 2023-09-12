// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

//This app shows how to display an asset image.
//In order to do this the images have to be
//in a "images" folder in the project
//and pubspec.yaml has to be changed to expose them.
//Note that the relative path to the image starts relative
//to where the pubspec.yaml file is not this main.dart file.

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
          title: const Text('Asset Image'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image.asset('./images/bottle.jpg'),
        ),
      ),
    );
  }
}
