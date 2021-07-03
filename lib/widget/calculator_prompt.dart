import 'package:flutter/material.dart';

class CalculatorPrompt extends StatelessWidget {
  final String problemText;
  final String answerText;

  CalculatorPrompt({this.answerText: "", this.problemText: ""});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        SizedBox(
          height: 50,
        ),
        Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerLeft,
          child: Text(problemText),
        ),
        Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerRight,
          child: Text(
            answerText.length > 0 ? "= $answerText" : "",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ],
    );
  }
}
