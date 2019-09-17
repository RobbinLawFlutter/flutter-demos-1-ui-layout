import 'package:flutter/material.dart';

void main() {
  //entry point to the app
  runApp(
    //runApp function
    MaterialApp(
      //first level widget of Material Design
      home: Scaffold(
        //default route
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Center Widget & Network Image"),
          backgroundColor: Colors.amber,
        ),
        body: Center(
          child: Image(
              image: NetworkImage(
                  'https://www.w3schools.com/w3css/img_snowtops.jpg')),
        ),
      ),
    ),
  );
}
