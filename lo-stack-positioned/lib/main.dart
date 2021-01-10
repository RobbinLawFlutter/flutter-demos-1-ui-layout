import 'package:flutter/material.dart';

//stacked and positioned widgets by RetroStudio
//https://www.youtube.com/watch?v=1qlgbNN0BaE&list=PLybADvIp2cxiVOEHi9ooCHP2tAAihHQPX&index=6

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //default route
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Stacked and Positioned Widgets"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Text('hi'),
      ),
    );
  }
}
