import 'package:flutter/material.dart';

//https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e
// display an asset image
// to change the launcher icon from the flutter icon
// drag and drop an image to appicon.co then generate a zip file
// unzip downloaded file
// in studio navigate to android/app/src/main/res
// right mouse and show in explorer
// delete mipmap-hdpi,-mdpi,-xhdpi,-xxhdpi,-xxxhdpi directories
// and replace with the new ones unzipped
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
          title: Text("Container Widget"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Container(
          //padding: EdgeInsets.all(50.0),
          //margin: EdgeInsets.fromLTRB(10.0, 50.0, 30.0, 20.0),
          //margin: EdgeInsets.all(50.0),
          //margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
          height: 300.0,
          width: 300.0,
          color: Colors.white,
          child: Image(image: AssetImage('images/bottle.jpg')),
        ),
      ),
    );
  }
}
