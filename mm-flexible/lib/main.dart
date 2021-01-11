import 'package:flutter/material.dart';

//flexible widget of the week
//https://www.youtube.com/watch?v=CI7x0mAZiY0&list=LLidCa21ZCJRTHUXUgg0OVSQ&index=340

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
          title: Text("Flexible Widget"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Column(
          children: [
            Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.blue,
                  ),
                  child: Image(
                    image: AssetImage('images/bottle.jpg'),
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 100.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.yellow,
                  ),
                  child: Image.asset('images/bottle.jpg'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
