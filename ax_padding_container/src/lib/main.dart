import 'package:flutter/material.dart';

//Padding Widget of the Week
//https://www.youtube.com/watch?v=oD5RtLhhubg&vl=en

//padding widget by RetroSudio
//https://www.youtube.com/watch?v=d9wQuxPZ494&list=PLybADvIp2cxiVOEHi9ooCHP2tAAihHQPX&index=7

//To see what is happening in this app we need to start the dartdevtools
//by going to View/Command Palette/Dart: Open DevTools.
//Choose open inspector page and click on Debug Paint to show
//the results of the padding and margin on the VM.

//We can use the Padding Widget wrapping the Container to apply
//padding, but from the body of the Scaffolds perspective.

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
          title: Text("Padding Widget"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
          //padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          //padding: EdgeInsets.all(20.0),
          child: Container(
            //margin: EdgeInsets.fromLTRB(50.0, 40.0, 20.0, 10.0),
            //padding: EdgeInsets.fromLTRB(10, 20, 30, 40),
            height: 400.0,
            width: 340.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.amber,
            ),
            child: Image.asset('images/bottle.jpg'),
          ),
        ),
      ),
    );
  }
}
