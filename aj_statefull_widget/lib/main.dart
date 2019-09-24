import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MyApp());

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade900,
        appBar: AppBar(
          title: Text("Statefull Widget"),
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
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                //signature for a voidcallback also called in some languages anonymous functions
                //a function with no name
                setState(() {
                  leftDiceNumber =
                      Random().nextInt(6) + 1; //random number between 0 and 5
                  print('Left button got pressed');
                  print('diceNumber = $leftDiceNumber');
                });
              },
              child: Image.asset(
                  'images/dice$leftDiceNumber.png'), //string interpolation with $
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                //signature for a voidcallback also called in some languages anonymous functions
                print('Right button got pressed');
              },
              child: Image.asset(
                  'images/dice$rightDiceNumber.png'), //string interpolation with $
            ),
          ),
        ],
      ),
    );
  }
}
