import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//https://flutter.dev/docs/development/ui/layout

//This app shows a short cut (lambda operator)
//to use when you have only one statement in a code block.
//Instead of the { runApp(); } or { return Widget} use =>

//This app also shows the use of
//methods with parameters to create complex Widgets by reusing code.

/*
void main() {
  runApp(MyApp());
}
*/
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text('Layout demo using reusable methods'),
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
      decoration: BoxDecoration(
        color: Colors.black45,
      ),
      child: Column(
        children: [
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
            border: Border.all(width: 10, color: Colors.blueGrey[900]),
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          margin: EdgeInsets.all(4),
          child: Image.asset('images/pic$imageIndex.jpg'),
        ),
      );
}
