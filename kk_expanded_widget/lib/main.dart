import 'package:flutter/material.dart';

//https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e

//Expanded Widget of the Week
//https://www.youtube.com/watch?v=_rnZaagadyo

//To see what is happening in this app we need to start the dartdevtools
//by going to View/Command Palette/Dart: Open DevTools.
//Choose to open DevTools in the browser and click on Debug Paint to show
//the results of the padding and margin demo.

//We can use the Expanded Widget with the Padding Widget
//and the Container Widget to stretch the Container Widgets
//as per the flex value.

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
        body: Column(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.blue,
                  ),
                  child: Image(
                    image: AssetImage('images/bottle.jpg'),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.yellow,
                  ),
                  child: Image(
                    image: AssetImage('images/moon.jpg'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
