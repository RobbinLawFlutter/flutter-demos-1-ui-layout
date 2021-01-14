//In this app we create our own class called MyApp.
//runApp will instanciate this MyApp into a Widget object
//and run it.
//The extends key word means that we are inheriting
//from the StatelessWidget class. Inheritance is a
//pillar of OOP.
//The @override keyword means that we are changing
//the base classes build method to our own. This is an example
//of polymophism. This is another pillar of OOP.
//This will return our produced MaterialApp Widget tree.

//stateless Widget from Widgets 101 series by the flutter team. Just up to minute 4:07.
//https://www.youtube.com/watch?v=wE7khGHVkYY

//center widget by RetroStudio
//https://www.youtube.com/watch?v=c726pWTtxqI&list=PLybADvIp2cxiVOEHi9ooCHP2tAAihHQPX&index=2

//text widget with style by RetroStudio: Just up to minute 4.
//https://www.youtube.com/watch?v=96Gb-YHQdmY&list=PLybADvIp2cxiVOEHi9ooCHP2tAAihHQPX&index=9

//https://flutter.dev/docs/development/ui/layout

import 'package:flutter/material.dart';

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
          title: Text('Intro to Stateless Widget'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Text(
            'Hey Man this is fun',
            style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
                backgroundColor: Colors.black,
                decoration: TextDecoration.combine([
                  TextDecoration.underline,
                  TextDecoration.overline,
                ])),
          ),
        ),
      ),
    );
  }
}
