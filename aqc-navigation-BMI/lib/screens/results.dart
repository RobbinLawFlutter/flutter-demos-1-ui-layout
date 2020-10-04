import 'package:flutter/material.dart';
import 'package:aqc_navigation_BMI/components/bottom-button.dart';
import 'package:aqc_navigation_BMI/constants.dart';
import 'package:aqc_navigation_BMI/components/reusable-card.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({@required this.bmiResult});

  final String bmiResult;

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
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
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
                      bmiResult,
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
                  Navigator.pop(context);
                },
              ),
            ),
          ]),
    );
  }
}
