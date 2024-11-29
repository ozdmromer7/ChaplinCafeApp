import 'package:chaplin_cafe_app/config/theme/application_theme.dart';
import 'package:flutter/material.dart';

class ThemeLight implements ApplicationTheme {
  ThemeLight._();
  static ThemeLight instance = ThemeLight._();
  @override
  ThemeData? theme = ThemeData(
      inputDecorationTheme: InputDecorationTheme(
          enabledBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(20))));
}
