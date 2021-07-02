import 'package:flutter/material.dart';

class StaticData {
  static List<String> buttonsData = [
    "C",
    "DEL",
    "%",
    "/",
    "1",
    "2",
    "3",
    "*",
    "4",
    "5",
    "6",
    "-",
    "7",
    "8",
    "9",
    "+",
    ".",
    "0",
    "00",
    "=",
  ];

  static bool isOperator(String item) {
    if (item == "%" ||
        item == "/" ||
        item == "*" ||
        item == "-" ||
        item == "+" ||
        item == "DEL" ||
        item == "C") {
      return true;
    }
    return false;
  }
}
