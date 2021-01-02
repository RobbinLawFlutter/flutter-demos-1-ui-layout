import 'package:flutter/material.dart';

//using the Icon Widget
// go to http://www.materialpalette.com

//Icons from Material
//https://material.io/resources/icons/?style=baseline

//SizedBox Widget of the Week
//https://www.youtube.com/watch?v=EHPu_DzRfqA
void main() {
  runApp(
    MyApp(),
  );
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
          title: Text("Icon Widget"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 150,
                backgroundColor: Colors.blue,
                backgroundImage: AssetImage('images/bottle.jpg'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'bottle pic',
                style: TextStyle(
                  fontFamily: 'Chilanka-Regular',
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.5,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 8),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.add_shopping_cart,
                        size: 50,
                        color: Colors.blue.shade500,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'go to this place',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.blue.shade300,
                        ),
                      ),
                    ],
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
