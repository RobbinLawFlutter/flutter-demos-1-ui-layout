import 'package:flutter/material.dart';

//Align Widget of the Week by the flutter team
//https://www.youtube.com/watch?v=g2E7yl3MwMk

//align widget by RetroStudio
//https://www.youtube.com/watch?v=7Dljvr-Afvc&list=PLybADvIp2cxiVOEHi9ooCHP2tAAihHQPX&index=11

//To see what is happening in this app we need to start the dartdevtools
//by going to View/Command Palette/Dart: Open DevTools.
//Choose open inspector page and click on Debug Paint to show
//the results of the padding and margin on the VM.

//We can use the Align Widget wrapping the Container to
//align it, but from the body of the Scaffolds perspective.
//We can also use Align wrapping the image to align it inside
//the container.

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
          title: Text("Align Widget"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Align(
          //alignment: Alignment.bottomCenter,
          //alignment: Alignment.bottomLeft,
          //alignment: Alignment.topRight,
          //alignment: Alignment.centerLeft,
          //alignment: Alignment.center, //default
          child: Container(
            height: 400.0,
            width: 340.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.amber,
            ),
            child: Align(
              //alignment: Alignment.bottomCenter,
              //alignment: Alignment.bottomLeft,
              //alignment: Alignment.topRight,
              //alignment: Alignment.centerLeft,
              //alignment: Alignment.center, //default
              child: Image.asset('images/bottle.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}
