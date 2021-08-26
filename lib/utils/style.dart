import 'package:flutter/material.dart';

class MyStyle {
  MyStyle._();

  static TextStyle textStyle(
          {required double fontSize,
          required Color color,
          FontWeight? fontWeight = FontWeight.w600}) =>
      TextStyle(fontSize: fontSize, color: color, fontWeight: fontWeight);
}
