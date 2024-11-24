import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color primary = Color(0xFF1877F2);
  static const Color black = Color(0xFF242527);
  static const Color grey = Color(0xFF898F9C);
  static const Color green = Colors.green;
  static const Color white = Colors.white;
  static const Color red = Colors.red;

  static ThemeData appTheme = ThemeData(
    primaryColor: primary,
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(seedColor: primary),
  );
}
