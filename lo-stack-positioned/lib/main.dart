import 'package:flutter/material.dart';

//stack widget of the week by the flutter team
//https://www.youtube.com/watch?v=liEGSeD3Zt8&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=50

//positioned widget of the week by the flutter team
//https://www.youtube.com/watch?v=EgtPleVwxBQ&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=27

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
          title: Text("Stack and Positioned Widgets"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Text('hi'),
      ),
    );
  }
}
