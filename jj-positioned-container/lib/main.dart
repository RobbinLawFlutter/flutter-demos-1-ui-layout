import 'package:flutter/material.dart';

//positioned widget of the week by the flutter team
//https://www.youtube.com/watch?v=EgtPleVwxBQ&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=27

//We can use the Positioned Widget wrapping the Container to
//position it, but from the body of the Scaffolds perspective.
//We can also use Positioned wrapping the image to position it inside
//the container.

//It works with a combination of parameters
//vertical (top, bottom, height) and
//horizontal (left, right, width)
//to position the widgets within the Stack.

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
          title: Text("Positioned Widget"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Container(
          height: 300,
          width: 300,
          child: Positioned(
            top: 50,
            left: 50,
            child: Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.amber,
              ),
              // child: Positioned(
              //   top: 50,
              //   left: 50,
              //   child: Image.asset('images/bottle.jpg'),
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
