import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler, String this.answerText);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //가로길이 꽉차게
      child: RaisedButton(
        textColor: Colors.white,
        color: Colors.blue,
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}
