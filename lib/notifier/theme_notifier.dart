import 'package:custom_theme/constants/enums/app_theme_enum.dart';
import 'package:custom_theme/theme/app_theme_light.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData? _currentTheme = AppThemeLight.instance.theme;
  ThemeData? get currentTheme => _currentTheme;

  changeTheme(AppThemes themes) {
    if (themes == AppThemes.light) {
      _currentTheme = ThemeData.light();
    } else {
      _currentTheme = ThemeData.dark();
    }
    notifyListeners();
  }
}
