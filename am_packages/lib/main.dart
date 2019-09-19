import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    myApp(),
  );
}

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
      child: Text(
        'hey',
        style: TextStyle(
          fontFamily: 'Chilanka-Regular',
          fontSize: 40,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.5,
        ),
      ),
    );
  }
}
