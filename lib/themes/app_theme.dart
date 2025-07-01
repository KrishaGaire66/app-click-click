import 'package:click_click/utils/colors.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: veryLightGray,

    // appBarTheme: const AppBarTheme(
    //   backgroundColor: primaryColor,
    //   foregroundColor: Colors.white,
    // ),
    textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.black)),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.teal,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.teal,
      foregroundColor: Colors.white,
    ),
    textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
  );
}
