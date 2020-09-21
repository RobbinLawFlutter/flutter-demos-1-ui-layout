import 'package:flutter/material.dart';

//https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e

//Container Widget of the Week
//https://www.youtube.com/watch?v=c1xLMaTUWCY&vl=en

//To see what is happening in this app we need to start the dartdevtools
//by going to View/Command Palette/Dart: Open DevTools.
//Choose to open DevTools in the browser and click on Debug Paint to show
//the results of the padding and margin demo.

//We can use the padding and margin properties of the Container Widget
//to apply padding and margin to the Container.

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
          height: 400.0,
          width: 340.0,
          //color: Colors.white,
          //padding: EdgeInsets.fromLTRB(50, 40, 10, 50),
          //padding: EdgeInsets.all(100.0),
          //margin: EdgeInsets.fromLTRB(50.0, 40.0, 20.0, 20.0),
          //margin: EdgeInsets.all(100.0),
          //margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.amber,
            border: Border.all(color: Colors.black, width: 3),
          ),
          child: Image(
            image: AssetImage('images/bottle.jpg'),
          ),
        ),
      ),
    );
  }
}
