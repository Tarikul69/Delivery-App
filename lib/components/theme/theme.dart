import 'package:flutter/material.dart';

ThemeData lightMood = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.white,
    primary: Colors.grey,
    secondary: Color.fromARGB(255, 188, 162, 192),
  ),
);
ThemeData darkMood = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Colors.black,
    primary: Colors.grey,
    secondary: Colors.orange,
  ),
);
