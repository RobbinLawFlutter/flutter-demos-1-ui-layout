import 'package:flutter/material.dart';
import 'first_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0B1034),
        // the 0xFF is the transparency, then 0B Red, 10 Green, 34 Blue
        scaffoldBackgroundColor: Color(0xFF0B1034),
      ),
      home: MyFirstPage(),
    );
  }
}
