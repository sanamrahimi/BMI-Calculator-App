import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Calculator {
  final int? height;
  final int? weight;
  double _bmi = 0;

  Calculator({@required this.height, @required this.weight});

  String calculateBMI() {
    _bmi = weight! / pow(height! / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'you have a higher than normal';
    } else if (_bmi >= 18.5) {
      return 'you have a normal weight.Good job!';
    } else {
      return 'you have a lower than normal body weight';
    }
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }
}
