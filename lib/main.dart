import 'package:flutter/material.dart';

import 'package:calculator/widget/button.dart';
import 'package:calculator/utility/static_data.dart';

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
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text("Calculator"),
      // ),
      body: Column(
        children: <Widget>[
          Expanded(flex: 1, child: Container()),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(0.0, 1.0), //(x,y)
                    blurRadius: 5.0,
                  ),
                ],
              ),
              child: GridView.builder(
                itemCount: StaticData.buttonsData.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (BuildContext context, int index) {
                  if (StaticData.buttonsData.length - 1 == index) {
                    return Button(
                      buttonText: StaticData.buttonsData[index],
                      textColor: Colors.white,
                      backgroundColor: Colors.greenAccent[400],
                    );
                  }
                  return Button(
                    buttonText: StaticData.buttonsData[index],
                    textColor:
                        StaticData.isOperator(StaticData.buttonsData[index])
                            ? Colors.white
                            : Colors.black,
                    backgroundColor:
                        StaticData.isOperator(StaticData.buttonsData[index])
                            ? Colors.deepPurple
                            : Colors.blue[400],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
