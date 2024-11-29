import 'package:chaplin_cafe_app/config/theme/theme_dark.dart';
import 'package:chaplin_cafe_app/config/theme/theme_light.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeNotifier extends ChangeNotifier {
  bool _isLightTheme = false;

  void changeTheme() {
    _isLightTheme = !_isLightTheme;
    notifyListeners();
  }

  ThemeData? get currentTheme =>
      _isLightTheme ? ThemeLight.instance.theme : ThemeDark.instance.theme;
}

extension ThemeContextExtensionForRead on BuildContext {
  ThemeData? get theme => watch<ThemeNotifier>().currentTheme;
}
