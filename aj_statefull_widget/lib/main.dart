import 'package:flutter/material.dart';

void main() {
  runApp(
    myApp(),
  );
}

class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Statefull Widget"),
          backgroundColor: Colors.red,
        ),
        body: Dice(),
      ),
    );
  }
}

class Dice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                //signature for a voidcallback also called in some languages anonymous functions
                print('Left button got pressed');
              },
              child: Image.asset('images/dice1.png'),
            ),
          ),
          Expanded(
            flex: 1,
            child: FlatButton(
              onPressed: () {
                //signature for a voidcallback also called in some languages anonymous functions
                print('Right button got pressed');
              },
              child: Image.asset('images/dice2.png'),
            ),
          ),
        ],
      ),
    );
  }
}
