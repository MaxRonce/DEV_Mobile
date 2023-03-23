import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData;

  static const String _themeKey = 'theme';

  ThemeProvider({ThemeData? themeData})
      : _themeData = themeData ?? ThemeData.light() {
    _loadTheme();
  }

  ThemeData get themeData => _themeData;

  void setTheme(ThemeData themeData) async {
    print('setTheme: méthode SetTheme de ThemeProvider appelée');
    _themeData = themeData;
    print('setTheme: _themeData = $themeData');
    notifyListeners();
    _saveTheme();
  }

  Future<void> _saveTheme() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_themeKey, _themeData.brightness.index);
  }

  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final brightnessIndex = prefs.getInt(_themeKey);
    if (brightnessIndex != null) {
      final brightness = Brightness.values[brightnessIndex];
      _themeData = ThemeData(brightness: brightness);
      notifyListeners();
    }
  }
}




