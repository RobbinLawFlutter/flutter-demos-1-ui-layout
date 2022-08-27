import 'package:flutter/material.dart';
import 'dart:math';

//Transform Widget of the Week
//https://www.youtube.com/watch?v=9z_YNlRlWfA&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=24

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //first level widget of Material Design
      home: Scaffold(
        //default route
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("Transform Widget"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Transform.rotate(
          //the angle property is required even if it is zero.
          //angle: 0,

          //the angle property needs a radian angle between
          //0 and pi (3.14).
          angle: pi / 4,
          //angle: pi / 2,
          //angle: 3,

          //the origin property moves the center of the Transforms
          //child widget to new coordinates from the center of
          //its parent, in this case the body of the scaffold.
          //the first number moves from center up(+) or down(-)
          //and the second number moves from center right(+) or left(-).
          //origin: Offset(125, 125),
          //origin: Offset(-125, 125),
          //origin: Offset(125, -125),
          //origin: Offset(-125, -125),
          child: Center(
            child: Container(
              height: 250.0,
              width: 250.0,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.amber,
                border: Border.all(color: Colors.black, width: 3),
              ),
              child: Image.asset('images/bottle.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}
