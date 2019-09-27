import 'question.dart';

class QuizMaster {
  // This list is PUBLIC and so the data can be changed from anywhere else in the app.
  List<Question> questionBank1 = [
    Question('The earth is flat.', false),
    Question('The earth is round.', true),
    Question('The earth is smaller than the moon.', false),
    Question('The earth is bigger than the moon.', true),
    Question('Programming in flutter is fun.', true)
  ];

  // ENCAPSULATION
  // Making this variable and list PRIVATE ensures that no where else outside of this class can the data be changed.
  // But now we need a getter for each piece of data,
  // and if we want to be able to change the data outside of this class we need a setter.
  // We have now brought the _questionNumber into this class so we can keep track of it and not crash the app.

  int _questionNumber = 0;

  List<Question> _questionBank2 = [
    Question('The earth is flat.', false),
    Question('The earth is round.', true),
    Question('The earth is smaller than the moon.', false),
    Question('The earth is bigger than the moon.', true),
    Question('Programming in flutter is fun.', true)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank2.length - 1) {
      _questionNumber++;
    }
    print(_questionNumber);
    print(_questionBank2.length);
  }

  String getQuestionText() {
    return _questionBank2[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank2[_questionNumber].questionAnswer;
  }
}
