import 'package:flutter/material.dart';

//https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e

//Padding Widget of the Week
//https://www.youtube.com/watch?v=oD5RtLhhubg&vl=en

//To see what is happening in this app we need to start the dartdevtools
//by going to View/Command Palette/Dart: Open DevTools.
//Choose open inspector page and click on Debug Paint to show
//the results of the padding and margin on the VM.

//We can use the Padding Widget wrapping the Container to apply
//padding, but from the body of the Scaffolds perspective.

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
          title: Text("Padding Widget"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
          //padding: EdgeInsets.all(10.0),
          child: Container(
            height: 400.0,
            width: 340.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.amber,
            ),
            child: Image.asset('images/bottle.jpg'),
          ),
        ),
      ),
    );
  }
}
