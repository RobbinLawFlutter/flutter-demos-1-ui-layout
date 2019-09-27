import 'question.dart';

class QuizMaster {
  // This list is PUBLIC and so the data can be changed from anywhere else in the app.
  List<Question> questionBank = [
    Question(q: 'The earth is flat.', a: false),
    Question(q: 'The earth is round.', a: true),
    Question(q: 'The earth is smaller than the moon.', a: false),
    Question(q: 'The earth is bigger than the moon.', a: true),
    Question(q: 'Programming in flutter is fun.', a: true)
  ];

/*
  // ENCAPSULATION
  // Making this list PRIVATE ensures that no where else outside of this class can the data be changed.
  // But now we need a getter for each piece of data,
  // and if we want to be able to change the data outside of this class we need a setter.

  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question(q: 'The earth is flat.', a: false),
    Question(q: 'The earth is round.', a: true),
    Question(q: 'The earth is smaller than the moon.', a: false),
    Question(q: 'The earth is bigger than the moon.', a: true),
    Question(q: 'Programming in flutter is fun.', a: true)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
    print(_questionNumber);
    print(_questionBank.length);
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }
*/
}
