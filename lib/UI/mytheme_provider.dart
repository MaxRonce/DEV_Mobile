import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData;

  ThemeProvider({ThemeData? themeData})
      : _themeData = themeData ?? ThemeData.light();

  ThemeData get themeData => _themeData;

  void setTheme(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }
}



