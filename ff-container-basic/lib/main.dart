import 'package:flutter/material.dart';

//https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e

//Container Widget of the Week
//https://www.youtube.com/watch?v=c1xLMaTUWCY&vl=en

//To see what is happening in this app we need to start the dartdevtools
//by going to View/Command Palette/Dart: Open DevTools.
//Choose to open DevTools in the browser and click on Debug Paint to show
//the results of the padding and margin demo.

//By default a container sizes itself to its child size.

//We can use the padding and margin properties of the Container Widget
//to apply padding and margin to the Container.

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
        body: Container(
          //if you do not specify a height and width the container will size to its child.
          height: 400.0,
          width: 340.0,
          //default color is the color of the containers parent, the scaffold.
          //cannot provide both a color and decoration at the same time.
          //color: Colors.white,
          //padding: EdgeInsets.fromLTRB(50, 40, 10, 50),
          //padding: EdgeInsets.all(100.0),
          //margin: EdgeInsets.fromLTRB(50.0, 40.0, 20.0, 20.0),
          //margin: EdgeInsets.all(100.0),
          //margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),

          //align the child within the container default is center.
          //alignment: Alignment.bottomCenter,
          //alignment: Alignment.centerRight,
          //alignment: Alignment.topLeft,

          //you can decorate the container to change its shape and
          //give it a border and color.
          decoration: BoxDecoration(
            //change the shape of the container default is rectangle.
            //shape: BoxShape.rectangle,
            //you cannot have color in two places.
            //color: Colors.amber,
            border: Border.all(color: Colors.black, width: 3),
          ),
          child: Image.asset('images/bottle.jpg'),
        ),
      ),
    );
  }
}
