// use the color picker again to pick the color of the ReuseableCard

import 'package:flutter/material.dart';

class MyFirstPage extends StatefulWidget {
  @override
  _MyFirstPageState createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(
                    myColor: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    myColor: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              myColor: Color(0xFF1D1E33),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(
                    myColor: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    myColor: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ReuseableCard extends StatelessWidget {
  ReuseableCard(
      {@required this.myColor}); // constructor that requires a Color parameter.

  final Color
      myColor; // final makes this property called myColor of type Color immutable, cannot change once set.

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: myColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
