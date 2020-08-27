import 'package:flutter/material.dart';

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
          title: Text("Stateless Widget with Web Image"),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Image(
            image: NetworkImage(
                'https://www.w3schools.com/w3css/img_snowtops.jpg'),
          ),
        ),
      ),
    );
  }
}
