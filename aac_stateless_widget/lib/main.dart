//In this app we create our own class called MyApp.
//runApp will instanciate this MyApp into a Widget object
//and run it.
//The extends key word means that we are inheriting
//from the StatelessWidget class.
//The @override keyword means that we are changing
//the base classes build method to our own.
//Our version will return our produced MaterialApp Widget tree.

//stateless Widget from Widgets 101 series
// https://www.youtube.com/watch?v=wE7khGHVkYY

// https://flutter.dev/docs/development/ui/layout

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Stateless Widget'),
        ),
        body: Center(
          child: Text(
            'Hey Man',
          ),
        ),
      ),
    );
  }
}
