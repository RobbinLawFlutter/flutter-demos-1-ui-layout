import 'package:flutter/material.dart';

//Expanded Widget of the Week by the flutter team
//https://www.youtube.com/watch?v=_rnZaagadyo

//expanded widget by RetroStudio
//https://www.youtube.com/watch?v=a-jbBVAB5o0&list=PLybADvIp2cxiVOEHi9ooCHP2tAAihHQPX&index=12

//We can use the Expanded Widget with the Padding Widget
//and the Container Widget to stretch the Container Widgets
//as per the flex value.

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //first level widget of Material Design
      home: Scaffold(
        //default route
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Expanded Widget"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Column(
          children: [
            Expanded(
              flex: 1,
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
            Expanded(
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
