import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final backgroundColor;
  final textColor;
  final String buttonText;

  // const Button({Key? key, this.backgroundColor,this.buttonText, this.textColor}) : super(key: key);
  Button({this.backgroundColor, this.buttonText = "", this.textColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          color: backgroundColor,
          child: Center(
            child: Text(
              buttonText,
              style: TextStyle(color: textColor, fontSize: 24),
            ),
          ),
        ),
      ),
    );
  }
}
