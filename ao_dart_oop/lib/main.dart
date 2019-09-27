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
  int questionNumber = 0;

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
                quizMaster.questionBank[questionNumber].questionText,
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
                //The user picked true.
                setState(() {
                  //quizMaster.questionBank[questionNumber].questionAnswer = true;
                  bool correctAnswer =
                      quizMaster.questionBank[questionNumber].questionAnswer;
                  /*
                  bool correctAnswer =
                      quizMaster.getQuestionAnswer();
                  */
                  if (correctAnswer == true) {
                    print('got it right');
                  } else {
                    print('got it wrong');
                  }
                  questionNumber++;
                  print(questionNumber);
                  // quizMaster.nextQuestion();
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
                  bool correctAnswer =
                      quizMaster.questionBank[questionNumber].questionAnswer;
                  /*
                  bool correctAnswer =
                      quizMaster.getQuestionAnswer();
                  */
                  if (correctAnswer == false) {
                    print('got it right');
                  } else {
                    print('got it wrong');
                  }
                  questionNumber++;
                  print(questionNumber);
                  // quizMaster.nextQuestion();
                }); // setState
              },
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Text(
              'hey man',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
