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

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      // appBar: AppBar(
      //   title: Text("Calculator"),
      // ),
      body: Column(
        children: <Widget>[
          Expanded(flex: 1, child: Container()),
          Expanded(
              flex: 2,
              child: Container(
                color: Colors.cyan,
              )),
        ],
      ),
    );
  }
}
