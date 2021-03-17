import 'package:flutter/material.dart';
import 'package:max/quiz.dart';
import 'question.dart';
import 'answer.dart';
import 'result.dart';
import 'question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  var _totalScore=0;
  void _answerQuestion(int score) {
    _totalScore+=score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': [
          {'text': 'black', 'score': 10},
          {'text': 'white', 'score': 3},
          {'text': 'red', 'score': 5},
          {'text': 'green', 'score': 11}
        ]
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': [
          {'text': 'lion', 'score': 10},
          {'text': 'cat', 'score': 3},
          {'text': 'dog', 'score': 5},
          {'text': 'monkey', 'score': 11}
        ]
      },
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _questionIndex < questions.length
              ? Quiz(
                  questions: questions,
                  answerQuestion: _answerQuestion,
                  questionIndex: _questionIndex,
                )
              : Result(_totalScore)),
    );
  }
}
