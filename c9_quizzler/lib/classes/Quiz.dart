import 'package:c9_quizzler/classes/Question.dart';

class Quiz {
  int _quesNo = 0;

  final List<Question> _quesBank = [
    Question(
        "A variable is a container for storing data in programming.", true),
    Question(
        "It is possible to change the value of a constant once it is defined.",
        false),
    Question("A function in programming always returns a value.", false),
    Question(
        "An array is a type of data structure used to store multiple values.",
        true),
    Question("A loop can run infinitely in some conditions.", true),
    Question("Comments in code are executed by the program.", false),
    Question(
        "An if statement is used for conditional execution of code.", true),
    Question(
        "A class is a blueprint for creating objects in object-oriented programming.",
        true),
    Question("Recursion is a process where a function calls itself.", true),
    Question("= is used for comparison in programming.", false)
  ];

  String getQuestionText() {
    return _quesBank[_quesNo].questionText;
  }

  bool getQuestionAnswer() {
    return _quesBank[_quesNo].questionAnswer;
  }

  void nextQuestion() {
    if (_quesNo < _quesBank.length - 1) {
      _quesNo++;
    }
  }

  bool isFinished(){
    if(_quesNo >= _quesBank.length - 1){
      return true;
    }
    else{
      return false;
    }
  }

  void reset(){
    _quesNo = 0;
  }
}
