import 'package:au_navigation/components/bottom-button.dart';
import 'package:flutter/material.dart';
import 'package:au_navigation/constants.dart';
import 'package:au_navigation/components/reusable-card.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                child: Text(
                  'Your BMI',
                  style: kTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReuseableCard(
                myColor: kActiveCardColor,
                reusableCardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '50.0',
                      style: kBMITextStyle,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: BottomButton(
                myText: 'RECALCULATE',
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ResultsPage()));
                },
              ),
            ),
          ]),
    );
  }
}
