import 'package:flutter/material.dart';

//Images Widget of the Week by the flutter team
//https://www.youtube.com/watch?v=7oIAs-0G4mw

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("Stateless Widget with Network Image"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child:
              Image.network('https://www.w3schools.com/w3css/img_snowtops.jpg'),
        ),
      ),
    );
  }
}
