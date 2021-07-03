import 'package:flutter/material.dart';

class CalculatorPrompt extends StatelessWidget {
  const CalculatorPrompt({Key? key}) : super(key: key);

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
          child: Text("99839"),
        ),
        Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.centerRight,
          child: Text(
            "= 99839",
            style: TextStyle(fontSize: 30),
          ),
        ),
      ],
    );
  }
}
