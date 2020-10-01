// this MySecondPage demonstrates the use of "custom widgets" to reuse code.
// It displays the same as the MyFirstPage.

import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const bottomContainerColor = Color(0xFFEB1555);

class MySecondPage extends StatefulWidget {
  @override
  _MySecondPageState createState() => _MySecondPageState();
}

class _MySecondPageState extends State<MySecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(
                    myColor: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    myColor: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              myColor: activeCardColor,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReuseableCard(
                    myColor: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    myColor: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}

class ReuseableCard extends StatelessWidget {
  // constructor that requires a Color parameter,
  // and optionally a reusableCardChild widget
  ReuseableCard({@required this.myColor, this.reusableCardChild});

  // final makes this property called myColor
  //of type Color immutable, cannot change once set.
  final Color myColor;

  final Widget reusableCardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: reusableCardChild,
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: myColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
