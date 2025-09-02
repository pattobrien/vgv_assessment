import 'package:flutter/material.dart';

/// {@template theme}
/// Theme for the application.
/// {@endtemplate}
class MyTheme {
  static ThemeData get theme => ThemeData(
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color.fromARGB(255, 51, 21, 9),
      brightness: Brightness.dark,
    ),
  );
}
