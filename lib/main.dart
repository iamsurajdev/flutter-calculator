import 'package:calculator/widget/calculator_buttons.dart';
import 'package:calculator/widget/calculator_prompt.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Calculator(),
    );
  }
}

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var problem = '';
  var answer = '';

  void buttonClick(value) {
    setState(() {
      problem += value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text("Calculator"),
      // ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: CalculatorPrompt(answerText: answer, problemText: problem),
          ),
          Expanded(
            flex: 2,
            child: CalculatorButtons(this.buttonClick),
          ),
        ],
      ),
    );
  }
}
