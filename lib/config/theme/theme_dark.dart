import 'package:chaplin_cafe_app/config/theme/application_theme.dart';
import 'package:flutter/material.dart';

class ThemeDark implements ApplicationTheme {
  ThemeDark._();
  static ThemeDark instance = ThemeDark._();
  @override
  ThemeData? theme = ThemeData(
      primaryColor: Colors.red,
      scaffoldBackgroundColor: Colors.black,
      textTheme: TextTheme(
          displayMedium: TextStyle(fontSize: 12, color: Colors.white),
          displayLarge: TextStyle(fontSize: 24, color: Colors.white)),
      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
              textStyle:
                  MaterialStateProperty.all(TextStyle(color: Colors.white)))),
      inputDecorationTheme: InputDecorationTheme(
          hintStyle: TextStyle(color: Colors.white, fontSize: 12),
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Colors.red)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: const BorderSide(color: Colors.white))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
              backgroundColor: const MaterialStatePropertyAll(Colors.red))));
}
