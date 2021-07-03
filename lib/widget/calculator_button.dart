import 'package:flutter/material.dart';

class CalculatorButton extends StatelessWidget {
  final backgroundColor;
  final textColor;
  final String buttonText;
  final onClick;

  // const Button({Key? key, this.backgroundColor,this.buttonText, this.textColor}) : super(key: key);
  CalculatorButton(
      {this.backgroundColor,
      this.buttonText = "",
      this.textColor,
      this.onClick});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Padding(
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
      ),
    );
  }
}
