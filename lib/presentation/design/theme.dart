import 'package:flutter/material.dart';

abstract class AppTheme {
  static final dark = ThemeData(
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(
          const Color(0xff2d3937),
        ),
      ),
    ),
    textTheme: const TextTheme(
      headline2: TextStyle(
        fontSize: 25,
        color: Colors.grey,
        fontWeight: FontWeight.w500,
      ),
      bodyText1: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.white,
      ),
    ),
    primaryColor: Colors.amber,
    scaffoldBackgroundColor: const Color(0xFF0C1611),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xff2d3937),
    ),
  );
}
