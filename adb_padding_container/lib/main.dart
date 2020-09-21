import 'package:flutter/material.dart';

//https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e

//Padding Widget of the Week
//https://www.youtube.com/watch?v=oD5RtLhhubg&vl=en

//To see what is happening in this app we need to start the dartdevtools
//by going to View/Command Palette/Dart: Open DevTools.
//Choose to open DevTools in the browser and click on Debug Paint to show
//the results of the padding and margin demo.

//We can use the Padding Widget wrapping the Container to apply
//padding, but from the body of the Scaffolds perspective.

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
          title: Text("Container Widget"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
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
