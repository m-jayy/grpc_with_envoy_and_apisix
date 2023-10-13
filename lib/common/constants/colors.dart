import 'package:flutter/material.dart';

abstract class AppColors {
  static const materialAccent = MaterialColor(
    0xFFFF9C00,
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFFFFFFF),
      200: Color(0xFFFFFFFF),
      300: Color(0xFFFFFFFF),
      400: Color(0xFFFFFFFF),
      500: Color(0xFFFFFFFF),
      600: Color(0xFFFFFFFF),
      700: Color(0xFFFFFFFF),
      800: Color(0xFFFFFFFF),
      900: Color(0xFFFFFFFF),
    },
  );
  // theme based colors
  static const accent = Color(0xFFFF9C00);
  static const text = Colors.black;
  static const textSecondary = Colors.grey;

  // fixed colors
  static const white = Colors.white;
  static const black = Colors.black;
  static const grey = Colors.grey;
  static const grey20 = Color(0xFFEEEEEE);
  static const lightGrey = Color(0xFFBDBDBD);
  static const red = Colors.redAccent;
  static const green = Colors.green;
}
