import 'package:flutter/material.dart';

//custom font text by RetroStudio: After minute 4.
//https://www.youtube.com/watch?v=96Gb-YHQdmY&list=PLybADvIp2cxiVOEHi9ooCHP2tAAihHQPX&index=9

//Using Avitar Widgets & Manipulating Text Properties
//Also loading custom fonts
//google fonts.google.com download the font you want and unzip
//in my case Chilanka-Regular
//create a directory in studio called "fonts" and drag and drop
//the ttf file to the new directory
//now edit pubspec.yaml to add the font same way as images
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
          title: Text("Avitar & Text Properties"),
          backgroundColor: Colors.blue,
        ),
        body: Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CircleAvatar(
                  radius: 150,
                  backgroundColor: Colors.yellow,
                  backgroundImage: AssetImage('images/bottle.jpg'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'bottle pic',
                  style: TextStyle(
                    fontFamily: 'Chilanka-Regular',
                    fontSize: 60,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    //fontWeight: FontWeight.normal,
                    letterSpacing: 4.5,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
