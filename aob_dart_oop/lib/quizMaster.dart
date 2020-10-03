import 'question.dart';

// ENCAPSULATION
//Making the variables and list PRIVATE "_"
//ensures that no where else outside of this class can the data be changed.
//But now we need a getter for each piece of data,
//and if we want to be able to change the data outside
//of this class we need a setter.
//We have now brought the _questionNumber into this class so we
//can keep track of it and not crash the app.

class QuizMaster {
  int _questionNumber;
  int _loopNumber;

  List<Question> _questionBank = [
    Question.positionalParameters('The earth is flat.', false),
    //This next does not work as parms are positional.
    //Question.positionalParameters(false, 'The earth is flat.'),
    Question.namedParamters(qText: 'The earth is round.', qAnswer: true),
    Question.namedParamters(
        qText: 'The earth is smaller than the moon.', qAnswer: false),
    Question.namedParamters(
        qAnswer: true, qText: 'The earth is bigger than the moon.'),
    Question.namedParamters(
        qText: 'Programming in flutter is fun.', qAnswer: true)
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
    return _questionBank[_questionNumber].qText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].qAnswer;
  }

  bool isNotFinished() {
    if (_loopNumber >= _questionBank.length) {
      print('isNotFinished returned FALSE');
      return false;
    } else {
      print('isNotFinished returned TRUE');
      return true;
    }
  }

  void reset() {
    _questionNumber = 0;
    _loopNumber = 0;
  }
}
