import 'package:flutter/material.dart';

//https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e

//Align Widget of the Week
//https://www.youtube.com/watch?v=g2E7yl3MwMk

//To see what is happening in this app we need to start the dartdevtools
//by going to View/Command Palette/Dart: Open DevTools.
//Choose to open DevTools in the browser and click on Debug Paint to show
//the results of the padding and margin demo.

//We can use the Align Widget wrapping the Container to
//align it, but from the body of the Scaffolds perspective.

void main() {
  runApp(MyApp());
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
          title: Text("Align Widget"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Align(
          //alignment: Alignment.bottomCenter,
          //alignment: Alignment.bottomLeft,
          //alignment: Alignment.topRight,
          //alignment: Alignment.centerLeft,
          //alignment: Alignment.center, //default
          child: Container(
            height: 400.0,
            width: 340.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.amber,
            ),
            child: Image(
              image: AssetImage('images/bottle.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}
