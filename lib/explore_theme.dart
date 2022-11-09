import 'package:flutter/material.dart';

class ExploreTheme {
  static TextTheme lightTextTheme = TextTheme(
    bodyText1: TextStyle(
      fontFamily: 'Axiforma',
      fontSize: 14.0,
      fontWeight: FontWeight.w300,
      color: Colors.black,
    ),
    bodyText2: TextStyle(
      fontFamily: 'Axiforma',
      fontSize: 15.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),
    headline1: TextStyle(
      fontFamily: 'Axiforma',
      fontSize: 32.0,
      fontWeight: FontWeight.w700,
      color: Colors.black,
    ),
    headline2: TextStyle(
      fontFamily: 'Axiforma',
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    bodyText1: TextStyle(
      fontFamily: 'Axiforma',
      fontSize: 14.0,
      fontWeight: FontWeight.w300,
      color: Colors.white,
    ),
    bodyText2: TextStyle(
      fontFamily: 'Axiforma',
      fontSize: 15.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),
    headline1: TextStyle(
      fontFamily: 'Axiforma',
      fontSize: 32.0,
      fontWeight: FontWeight.w700,
      color: Colors.white,
    ),
    headline2: TextStyle(
      fontFamily: 'Axiforma',
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
  );

  static ThemeData light() {
    return ThemeData(
      brightness: Brightness.light,
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateColor.resolveWith(
          (states) {
            return Colors.black;
          },
        ),
      ),
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white,
      ),
      textTheme: lightTextTheme,
    );
  }

  static ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: AppBarTheme(
        foregroundColor: Colors.white,
        backgroundColor: Colors.black,
      ),
      textTheme: darkTextTheme,
    );
  }
}
