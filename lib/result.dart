import 'package:flutter/material.dart';

import 'answer.dart';
import 'question.dart';

class Result extends StatelessWidget {
  final int resultSrore;
  final Function resetHandler;

  Result(this.resultSrore, this.resetHandler);

  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultSrore <= 8) {
      resultText = 'You are Awesome!';
    } else if (resultSrore <= 12) {
      resultText = 'Good!';
    } else if (resultSrore <= 16) {
      resultText = 'hmm...?';
    } else {
      resultText = 'WTH!';
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            onPressed: resetHandler,
            child: Text('다시시작'),
          ),
        ],
      ),
    );
  }
}
