import 'package:flutter/material.dart';

//Container Widget of the Week
//https://www.youtube.com/watch?v=c1xLMaTUWCY&vl=en

//container widget from RetroPortal
//https://www.youtube.com/watch?v=fvtyGySLlfs&list=PLybADvIp2cxiVOEHi9ooCHP2tAAihHQPX&index=3

//https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e

//To see what is happening in this app we need to start the dartdevtools
//by going to View/Command Palette/Dart: Open DevTools.
//Choose open inspector page and click on Debug Paint to show
//the results of the padding and margin on the VM.

//By default a container sizes itself to its child size.

//We can use the padding and margin properties of the Container Widget
//to apply padding and margin to the Container.

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
          title: Text("Container Widget"),
          backgroundColor: Colors.blueGrey[900],
        ),
        //by default the container will be placed in the top left of its parent, the body of the scaffold.
        body: Container(
          //if you do not specify a height and width the container will size to its child.
          height: 400.0,
          width: 340.0,
          //default color is the color of the containers parent, the scaffold.
          color: Colors.white,

          padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
          //padding: EdgeInsets.all(100.0),

          margin: EdgeInsets.fromLTRB(50.0, 40.0, 20.0, 10.0),
          //margin: EdgeInsets.all(100.0),
          //margin: EdgeInsets.symmetric(vertical: 50.0, horizontal: 10.0),

          //align the child within the container, default is center.
          //alignment: Alignment.bottomCenter,
          //alignment: Alignment.centerRight,
          //alignment: Alignment.topLeft,

          child: Image.asset('images/bottle.jpg'),
        ),
      ),
    );
  }
}
