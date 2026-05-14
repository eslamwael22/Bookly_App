import 'package:flutter/material.dart';

abstract class AppStyles {
  static const TextStyle TitleMedium = TextStyle(
    fontSize: 19,
    fontWeight: FontWeight.w700,
  );
  static const TextStyle TitleBold = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    fontFamily: 'Grenze',
  );
  static const TextStyle Titlesmall = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w100,
    fontStyle: FontStyle.italic,
    fontFamily: 'Cairo',
    color: Colors.redAccent,
  );
}
