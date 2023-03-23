import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingViewModel extends ChangeNotifier {
  late SharedPreferences _prefs;
  bool _isDark = false;
  String _language = 'en';

  SettingViewModel() {
    SharedPreferences.getInstance().then((prefs) {
      _prefs = prefs;
      _isDark = _prefs.getBool('isDark') ?? false;
      _language = _prefs.getString('language') ?? 'en';
      notifyListeners();
      print('SettingViewModel instance created successfully!');
    });
  }

  bool get isDark => _isDark;
  String get language => _language;

  set isDark(bool value) {
    _isDark = value;
    _prefs.setBool('isDark', value);
    notifyListeners();
    print('isDark in SettingViewModel: $value');
  }

  set language(String value) {
    _language = value;
    _prefs.setString('language', value);
    notifyListeners();
  }
}
