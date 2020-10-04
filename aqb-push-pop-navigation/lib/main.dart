//Push and Pop Navigation Basics
//https://flutter.dev/docs/cookbook/navigation/navigation-basics

import 'package:flutter/material.dart';
import 'screen0.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen0(),
    );
  }
}
