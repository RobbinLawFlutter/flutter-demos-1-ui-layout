import 'package:flutter/material.dart';

//custom font text by RetroStudio: After minute 4.
//https://www.youtube.com/watch?v=96Gb-YHQdmY&list=PLybADvIp2cxiVOEHi9ooCHP2tAAihHQPX&index=9

//Using Avitar Widgets & Manipulating Text Properties
//Also loading custom fonts
//google fonts.google.com download the font you want and unzip
//in my case Chilanka-Regular
//create a directory called "fonts" and drag and drop
//the ttf file to the new directory
//now edit pubspec.yaml to add the font same way as images
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //first level widget of Material Design
      home: Scaffold(
        //default route
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("Avitar & Text Properties"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.all(15.0),
              child: CircleAvatar(
                radius: 150,
                //backgroundColor: Colors.amber,
                backgroundImage: AssetImage('assets/images/bottle.jpg'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                'bottle pic',
                style: TextStyle(
                    fontFamily: 'Chilanka-Regular',
                    fontSize: 60,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    //fontWeight: FontWeight.normal,
                    letterSpacing: 10.5,
                    wordSpacing: 6),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
