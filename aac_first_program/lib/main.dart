// https://flutter.dev/docs/development/ui/layout
// https://www.youtube.com/watch?v=CXedqMlLo7M
// https://www.youtube.com/watch?v=wE7khGHVkYY

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
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
