import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({@required this.myColor, this.reusableCardChild, this.onPress});
  // constructor that requires a Color parameter,
  // and an optional reusableCardChild widget

  final Color myColor;
  // final makes this property called myColor of type Color immutable, cannot change once set.

  final Widget reusableCardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: reusableCardChild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: myColor,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
