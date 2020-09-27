import 'package:flutter/material.dart';
import 'dart:math';

//Flutter 101: Statefull Widgets
//https://www.youtube.com/watch?v=AqCMFXEmf3w

//CHALLENGE 1: Finish the right dice to operate like the left.
//CHALLENGE 2: Create a method inside the class to reuse code.
//Make it so that when the right dice is pressed both dice update.
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade900,
        appBar: AppBar(
          title: Text("Statefull Widgets"),
          backgroundColor: Colors.blue.shade400,
        ),
        body: Dice(),
      ),
    );
  }
}

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                print('Just entered onPressed anonomous function');
                setState(() {
                  //setState takes as a parm an anonomous function.
                  //Inside this function setState will mark DIRTY
                  //any variable that changes well as anything that uses
                  //that DIRTY variable anywhere inside the nearest build
                  //method.

                  //Random number between 0 and 5 then add 1
                  leftDiceNumber = Random().nextInt(6) + 1;

                  print('Left button got pressed');
                  print('leftDiceNumber = $leftDiceNumber');

                  //At the end of the setState anonomous function
                  //setState triggers the nearest build method
                  //which in turn updates or rerenders the screen
                  //to reflect changes from anything labeled DIRTY.
                });
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                //changeBothDiceFace();
                print('Right button got pressed');
                print('rightDiceNumber = $rightDiceNumber');
              },
              child: Image.asset('images/dice$rightDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }

  // void changeBothDiceFace() {
  //   setState(() {
  //     leftDiceNumber = Random().nextInt(6) + 1;
  //     rightDiceNumber = Random().nextInt(6) + 1;
  //   });
  // }
}
