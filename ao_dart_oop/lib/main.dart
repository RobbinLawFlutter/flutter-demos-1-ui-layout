// This app shows why it is good to modularize, abstract, and
// encapsulate code.
// four pillars of OOP
// Abstraction by using classes and instanciating objects from the class template.
// Encapsulation "_" make members private to the class.
// Inheritance "extends" the base class template.
// Polymorphism "@overload" changes methods of the base class.

// CHALLENGE:  download and use the package rflutter_alert 1.0.2 to give an
// alert if the _questionNumber gets to big.
// Hints: go to github  londonappbrewery/quizzler-flutter-challenge-final  and look at main.dart for clues.

import 'package:flutter/material.dart';
import 'quizMaster.dart';

QuizMaster quizMaster = QuizMaster();

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: MyFirstPage(),
          ),
        ),
      ),
    );
  }
}

class MyFirstPage extends StatefulWidget {
  @override
  _MyFirstPageState createState() => _MyFirstPageState();
}

class _MyFirstPageState extends State<MyFirstPage> {
  List<Icon> scoreKeeper = [];

  List<String> questions = [
    'the earth is flat',
    'the earth is round',
    'this is fun'
  ];

  List<bool> answers = [false, true, true];

  int questionNumber = 0;

  void checkAnswer(bool userAnswer) {
    setState(() {
      bool correctAnswer = answers[questionNumber];
      //quizMaster.questionBank[questionNumber].questionAnswer = true;
      //bool correctAnswer =
      //quizMaster.questionBank[questionNumber].questionAnswer;
      //bool correctAnswer = quizMaster.getQuestionAnswer();
      if (userAnswer == correctAnswer) {
        print('got it right');
        scoreKeeper.add(
          Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
      } else {
        print('got it wrong');
        scoreKeeper.add(
          Icon(
            Icons.close,
            color: Colors.red,
          ),
        );
      }
      questionNumber++;
      print(questionNumber);
      //quizMaster.nextQuestion();
    }); // setState
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions[questionNumber],
                //quizMaster.questionBank[questionNumber].questionText,
                //quizMaster.getQuestionText(),
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                checkAnswer(true);
              }, // onPressed
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                checkAnswer(false);
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}