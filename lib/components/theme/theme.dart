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
  brightness: Brightness.values.first,
  colorScheme: ColorScheme.dark(
    background: const Color.fromARGB(255, 206, 196, 196),
    primary: Color.fromARGB(255, 238, 238, 238),
    secondary: Colors.orange,
  ),
);
