import 'question.dart';

// ENCAPSULATION
//Making this variable and list PRIVATE "_"
//ensures that no where else outside of this class can the data be changed.
//But now we need a getter for each piece of data,
//and if we want to be able to change the data outside of this class we need a setter.
//We have now brought the _questionNumber into this class so we
//can keep track of it and not crash the app.

class QuizMaster {
  int _questionNumber;
  int _loopNumber;

  List<Question> _questionBank = [
    Question('The earth is flat.', false),
    Question('The earth is round.', true),
    Question('The earth is smaller than the moon.', false),
    Question('The earth is bigger than the moon.', true),
    Question('Programming in flutter is fun.', true)
  ];

  QuizMaster() {
    _questionNumber = 0;
    _loopNumber = 0;
  }
  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
    print('_questionNumber is $_questionNumber');
    if (_loopNumber < _questionBank.length) {
      _loopNumber++;
    }
    print('_loopNumber is $_loopNumber');
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isNotFinished() {
    if (_loopNumber >= _questionBank.length) {
      print('isNotFinished Now returning false');
      return false;
    } else {
      return true;
    }
  }

  void reset() {
    _questionNumber = 0;
    _loopNumber = 0;
  }
}
