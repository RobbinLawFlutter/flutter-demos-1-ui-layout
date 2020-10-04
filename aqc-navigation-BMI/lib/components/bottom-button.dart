import 'package:flutter/material.dart';
import 'package:aqc_navigation_BMI/constants.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({@required this.myText, @required this.onTap});

  final String myText;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            myText,
            style: kLargeButtonTextStyle,
          ),
        ),
        color: kBottomContainerColor,
        margin: EdgeInsets.only(top: 10),
        padding: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: kBottomContainerHeight,
      ),
    );
  }
}
