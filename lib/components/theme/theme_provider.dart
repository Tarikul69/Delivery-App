import 'package:flutter/material.dart';
import 'package:deliveryapp/components/theme/theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = lightMood;

  ThemeData get themeData => _themeData;

  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme(params) {
    if (_themeData == lightMood) {
      themeData = darkMood;
    } else {
      themeData = lightMood;
    }
  }
}
