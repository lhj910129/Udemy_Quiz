import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/quiz.dart';
import 'package:flutter_complete_guide/result.dart';
import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

// 언더바를 붙이는 이유 = private
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  

  final _questions = const [
    {
      'questionText': 'What\'s your favorite Color?',
      'answer': [
        {'text': 'White', 'score': 10},
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 3},
        {'text': 'Green', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite Animal?',
      'answer': [
        {'text': 'Tiger', 'score': 10},
        {'text': 'Lion', 'score': 5},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Rabbit', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite Season?',
      'answer': [
        {'text': 'Spring', 'score': 10},
        {'text': 'Summer', 'score': 10},
        {'text': 'Fall', 'score': 10},
        {'text': 'Winter', 'score': 10},
      ],
    }
  ];
  var _totalScore = 0;

  //초기화
  void _resetQuiz(){
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }


  void _answerQuestion(int score) {
    _totalScore = _totalScore + score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    print(_totalScore);
  }

  @override //decorator
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('My Firest App')),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
