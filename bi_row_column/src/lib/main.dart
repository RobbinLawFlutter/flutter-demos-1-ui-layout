import 'package:flutter/material.dart';

//Row and Column Widget of the Week
//There is NO widget of the week.

//row and column widgets by RetroStudio
//https://www.youtube.com/watch?v=4-pqu00zgek&list=PLybADvIp2cxiVOEHi9ooCHP2tAAihHQPX&index=4

//https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e

//Row and Column CheatSheet
//https://medium.com/jlouage/flutter-row-column-cheat-sheet-78c38d242041

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
          title: const Text("Row and Column Widgets"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,

          //spaceAround spaces evenly but half at the fist and last
          //child
          //mainAxisAlignment: MainAxisAlignment.spaceAround,

          //start is the default
          //mainAxisAlignment: MainAxisAlignment.start,

          //mainAxisAlignment: MainAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.end,

          //center is the default
          //crossAxisAlignment: CrossAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          //crossAxisAlignment: CrossAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.end,
          //crossAxisAlignment: CrossAxisAlignment.baseline,
          //mainAxisSize: MainAxisSize.max,
          //mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              child: const Center(
                child: Text(
                  'Container 1',
                ),
              ),
            ),
            Container(
              height: 150.0,
              width: 100.0,
              color: Colors.orange,
              child: const Text(
                'Container 2',
              ),
            ),
            Container(
              height: 50.0,
              //This will only work with a row
              //as it affects the cross axis only.
              //height: double.infinity,
              width: 50.0,
              //This will only work with a column
              //as it affects the cross axis only.
              //width: double.infinity,
              color: Colors.red,
              child: const Text(
                'Container 3',
              ),
            ),
            Container(
              height: 20.0,
              //If we do not specify a width
              //it will default to the size
              //of the containers child.
              //width: 10,
              color: Colors.blue,
              child: const Text(
                'Container 4',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
