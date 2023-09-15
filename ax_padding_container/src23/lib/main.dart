// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

//Padding Widget of the Week
//https://www.youtube.com/watch?v=oD5RtLhhubg&vl=en

//padding widget by RetroSudio
//https://www.youtube.com/watch?v=d9wQuxPZ494&list=PLybADvIp2cxiVOEHi9ooCHP2tAAihHQPX&index=7

// Note that there is NO Margin Widget.

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
          title: const Text("Padding Widget"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
          //padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          //padding: EdgeInsets.all(20.0),
          child: Container(
            //margin: EdgeInsets.fromLTRB(50.0, 40.0, 20.0, 10.0),
            //padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
            height: 400.0,
            width: 340.0,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.amber,
            ),
            child: Image.asset('./images/bottle.jpg'),
          ),
        ),
      ),
    );
  }
}
