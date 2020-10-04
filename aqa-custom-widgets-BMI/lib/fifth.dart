//This MyFifthPage demonstrates the use of both custom widgets
//but now they are both modularized into their own
//my-icon.dart and reusable-card.dart files.
//Also shows the use of enums
//and the Ternary Operator.
//Also functionality with GestureDetector and setSate.

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusable-card.dart';
import 'my-icon.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);
const bottomContainerColor = Color(0xFFEB1555);

enum Gender {
  male,
  female,
}

class MyFifthPage extends StatefulWidget {
  @override
  _MyFifthPageState createState() => _MyFifthPageState();
}

class _MyFifthPageState extends State<MyFifthPage> {
  Gender selectedGender;

  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(Gender selectedGender) {
    if (selectedGender == Gender.male) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeCardColor;
        femaleCardColor = inactiveCardColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    }
    if (selectedGender == Gender.female) {
      if (femaleCardColor == inactiveCardColor) {
        femaleCardColor = activeCardColor;
        maleCardColor = inactiveCardColor;
      } else {
        femaleCardColor = inactiveCardColor;
      }
    }
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        //First way using a method to
                        //update the card color.
                        //updateColor(Gender.male);

                        //Second way directly selecting gender.
                        selectedGender = Gender.male;
                      });
                      print('Male card was pressed');
                    },
                    child: ReuseableCard(
                      //First way updating color via
                      //variable that was changed in method.
                      //myColor: maleCardColor,

                      //Second way using terinary operator.
                      myColor: selectedGender == Gender.male
                          ? activeCardColor
                          : inactiveCardColor,

                      reusableCardChild: MyIcon(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        //First way
                        //updateColor(Gender.female);

                        //Second way
                        selectedGender = Gender.female;
                      });
                      print('Female card was pressed');
                    },
                    child: ReuseableCard(
                      //First way
                      //myColor: femaleCardColor,

                      //Second way
                      myColor: selectedGender == Gender.female
                          ? activeCardColor
                          : inactiveCardColor,

                      reusableCardChild: MyIcon(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
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
