import 'package:flutter/material.dart';

//using the Icon Widget
//also adding padding class
// go to materialpallet.com
void main() {
  runApp(
    myApp(),
  );
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //first level widget of Material Design
      home: Scaffold(
        //default route
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Icon Widget"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          //crossAxisAlignment: CrossAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.end,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.blue,
              backgroundImage: AssetImage('images/moon.jpg'),
            ),
            Text(
              'moon pic',
              style: TextStyle(
                fontFamily: 'Chilanka-Regular',
                fontSize: 40,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5,
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              //padding: EdgeInsets.all(10),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.build,
                      size: 50,
                      color: Colors.blue.shade500,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'go to this place',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue.shade300,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
