import 'package:flutter/material.dart';

//stack widget of the week by the flutter team
//https://www.youtube.com/watch?v=liEGSeD3Zt8&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=50

//positioned widget of the week by the flutter team
//https://www.youtube.com/watch?v=EgtPleVwxBQ&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=27

//stack and positioned widgets by RetroStudio
//https://www.youtube.com/watch?v=1qlgbNN0BaE&list=PLybADvIp2cxiVOEHi9ooCHP2tAAihHQPX&index=6

//Align Widget of the Week by the flutter team
//https://www.youtube.com/watch?v=g2E7yl3MwMk

//align widget by RetroStudio
//https://www.youtube.com/watch?v=7Dljvr-Afvc&list=PLybADvIp2cxiVOEHi9ooCHP2tAAihHQPX&index=11

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
          title: Text("Stack, Positioned, and Aligned Widgets"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Stack(
          //Children of the stack are stacked on top of
          //one another starting with the first child on
          //the bottom.
          //Non Positioned and Non Aligned children
          //of the stack will be aligned with alignment
          //property of stack.
          //topLeft is the default.
          //alignment: Alignment.topLeft,
          //alignment: Alignment.bottomCenter,
          //alignment: Alignment.topRight,
          children: <Widget>[
            //POSITIONED WIDGET WITHIN STACK
            //It works with a combination of parameters
            //vertical (top, bottom, height) and
            //horizontal (left, right, width)
            //to position the widgets within the Stack.
            Positioned(
              top: 100,
              left: 100,
              child: Container(
                height: 300,
                width: 300,
                child: Center(child: Text('Positioned')),
                color: Colors.amber,
              ),
            ),
            //ALIGNED WIDGET WITHIN STACK
            Align(
              //alignment: Alignment.bottomCenter,
              //alignment: Alignment.bottomLeft,
              alignment: Alignment.topRight,
              //alignment: Alignment.centerLeft,
              //alignment: Alignment.center, //default
              child: Container(
                height: 200,
                width: 200,
                child: Center(child: Text('Aligned')),
                color: Colors.brown,
              ),
            ),
            //NON POSITIONED AND NON ALIGNED CHILD OF STACK
            Container(
              height: 150,
              width: 160,
              child: Center(child: Text('Non-Positioned/Aligned')),
              color: Colors.cyan,
            ),
            Positioned(
              bottom: 100,
              right: 100,
              child: Container(
                child: Image.asset('images/bottle.jpg'),
              ),
            ),
            Positioned(
              bottom: 110,
              right: 110,
              child: Container(
                decoration: BoxDecoration(
                    //color: Colors.black45,
                    ),
                child: Text(
                  'message in a bottle',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
