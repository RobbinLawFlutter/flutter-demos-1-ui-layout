import 'package:flutter/material.dart';

//https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e

//Row and Column CheatSheet
//https://medium.com/jlouage/flutter-row-column-cheat-sheet-78c38d242041

//Row and Column Widget of the Week
//

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
          title: Text("Row and Column Widgets"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //mainAxisAlignment: MainAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          //mainAxisAlignment: MainAxisAlignment.end,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          //crossAxisAlignment: CrossAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              height: 100.0,
              width: 100.0,
              color: Colors.white,
              child: Center(
                child: Text(
                  'Container 1',
                ),
              ),
            ),
            Container(
              height: 150.0,
              width: 100.0,
              color: Colors.orange,
              child: Text(
                'Container 2',
              ),
            ),
            Container(
              height: 50.0,
              //height: double.infinity,
              width: 50,
              //width: double.infinity,
              color: Colors.red,
              child: Text(
                'Container 3',
              ),
            ),
            Container(
              height: 20.0,
              //width: 10,
              color: Colors.blue,
              child: Text(
                'Container 4',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
