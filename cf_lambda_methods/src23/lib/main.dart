// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//https://flutter.dev/docs/development/ui/layout

//This app shows a short cut (lambda operator)
//to use when you have only one statement in a code block.
//Instead of the { runApp(); } or { return Widget} use =>

//This app also shows the use of
//methods with parameters to create complex Widgets by reusing code.

// void main() {
//   runApp(const MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text('Layout demo using reusable methods'),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: buildImageColumn(),
        ),
      ),
    );
  }

  //A method that is structured the long way using {} and return.
  Widget buildImageColumn() {
    return Container(
      //color: Colors.white,
      decoration: const BoxDecoration(
        color: Colors.black45,
      ),
      child: Column(
        children: [
          //Text('hi there'),
          buildImageRow(1),
          buildImageRow(3),
        ],
      ),
    );
  }

  //A method that is structured the short way using =>
  //now we do not need {} and return.
  Widget buildImageRow(int imageIndex) => Row(
        children: [
          buildDecoratedImage(imageIndex),
          buildDecoratedImage(imageIndex + 1),
        ],
      );

  Widget buildDecoratedImage(int imageIndex) => Expanded(
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              width: 5,
              color: const Color(0xFFFFFFFF),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          margin: const EdgeInsets.all(4),
          child: Image.asset('assets/images/pic$imageIndex.jpg'),
        ),
      );
}
