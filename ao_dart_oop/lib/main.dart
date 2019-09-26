import 'package:flutter/material.dart';
import 'question.dart';

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
  List<Question> questionBank = [
    Question(q: 'The earth is flat.', a: false),
    Question(q: 'The earth is flat.', a: true),
    Question(q: 'The earth is flat.', a: true)
  ];

  Question q1 = Question(q: 'The earth is flat.', a: false);

  List<Icon> score = [];

  List<String> questions = [
    'The earth is flat.',
    'The earth is round.',
    'The earth is bigger than the moon.'
  ];

  List<bool> answers = [false, true, true];

  int questionNum = 0;

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
                questionBank[questionNum].questionText,
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
                //The user picked true.
                setState(() {
                  bool correctAnswer = questionBank[questionNum].questionAnswer;
                  if (correctAnswer == true) {
                    print('got it right');
                  } else {
                    print('got it wrong');
                  }
                  questionNum++;
                  print(questionNum);
                  score.add(
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                  ); // score.add
                }); // setState
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
                //The user picked false.
                setState(() {
                  questionNum++;
                  print(questionNum);
                  score.add(
                    Icon(
                      Icons.check,
                      color: Colors.green,
                    ),
                  ); // score.add
                }); // setState
              },
            ),
          ),
        ),
        Row(
          children: score,
        )
      ],
    );
  }
}

/*
question1: 'The earth is flat.', false,
question2: 'The earth is round.', true,
question3: 'The earth is bigger than the moon.', true,
*/
