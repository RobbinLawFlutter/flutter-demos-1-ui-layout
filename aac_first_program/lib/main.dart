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
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey[900],
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text(
            'Hello World',
          ),
        ),
      ),
    );
  }
}
