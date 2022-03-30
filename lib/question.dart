import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionText;

  Question(this.questionText); //중괄호를 사용하면 Argument, 이건 그냥 매개변수

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, //디바이스의 전체 가로 길이
      margin: EdgeInsets.all(10),
      child: Text(
        questionText,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
