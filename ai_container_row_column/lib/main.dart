import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// https://flutter.dev/docs/development/ui/layout

//The first thing this app shows is a short cut (lambda operator)
//to use when you have only one statement in a code block.
//Instead of the { runApp(); } or { return Widget} use =>

//The second thing this app shows is the use of
//methods to create complex Widgets reusing code.

/*
void main() {
  runApp(MyApp());
}
*/
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Flutter layout demo',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter layout demos'),
          ),
          body: Center(child: buildImageColumn()),
        ),
      );

  Widget buildImageColumn() => Container(
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

  Widget buildImageRow(int imageIndex) => Row(
        children: [
          buildDecoratedImage(imageIndex),
          buildDecoratedImage(imageIndex + 1),
        ],
      );

  Widget buildDecoratedImage(int imageIndex) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 10, color: Colors.black38),
          borderRadius: const BorderRadius.all(const Radius.circular(8)),
        ),
        margin: const EdgeInsets.all(4),
        child: Image.asset('images/pic$imageIndex.jpg'),
      ),
    );
  }
}
