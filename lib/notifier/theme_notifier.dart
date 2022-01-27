import 'package:custom_theme/constants/enums/app_theme_enum.dart';
import 'package:custom_theme/theme/app_theme_light.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeNotifier with ChangeNotifier {
  ThemeData? _currentTheme = AppThemeLight.instance.theme;
  ThemeData? get currentTheme => _currentTheme;

  changeTheme() {
    if (_currentTheme == ThemeData.light()) {
      _currentTheme = ThemeData.dark();
    } else {
      _currentTheme = ThemeData.light();
    }
    notifyListeners();
    print(currentTheme.toString());
  }
}
