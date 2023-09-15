// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

//Container Widget of the Week from the flutter team
//https://www.youtube.com/watch?v=c1xLMaTUWCY&vl=en

//container widget from RetroPortal
//https://www.youtube.com/watch?v=fvtyGySLlfs&list=PLybADvIp2cxiVOEHi9ooCHP2tAAihHQPX&index=3

//boxdecoration cheat sheet
//https://medium.com/jlouage/flutter-boxdecoration-cheat-sheet-72cedaa1ba20

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
          title: const Text("Container Widget"),
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
            //change the shape of the container, default is rectangle.
            shape: BoxShape.circle,
            // If you use the decoration property
            // you can only change the color here, not
            // in the color prop of the container.
            color: Colors.amber,
            border: Border.all(color: Colors.black, width: 3),
          ),
          child: Image.asset('./images/bottle.jpg'),
        ),
      ),
    );
  }
}
