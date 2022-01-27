import 'package:custom_theme/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AppThemeLight extends AppTheme {
  static AppThemeLight? _appThemeLight;

  static AppThemeLight get instance {
    _appThemeLight ??= AppThemeLight.init();
    return _appThemeLight!;
  }

  AppThemeLight.init();

  ThemeData get myTheme => ThemeData.light();
}
