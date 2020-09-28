import 'package:flutter/material.dart';

//This app shows how to display an asset image.
//Also we will get a custom launcher icon in place.
//To change the launcher icon from the flutter icon
//drag and drop an image to appicon.co then generate a zip file
//unzip downloaded file
//in VSCode navigate to android/app/src/main/res
//right mouse and show in explorer
//delete mipmap-hdpi,-mdpi,-xhdpi,-xxhdpi,-xxxhdpi directories
//and replace with the new ones unzipped

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
          title: Text("Asset Image & Launch Icon"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Image.asset('images/bottle.jpg'),
        ),
      ),
    );
  }
}
