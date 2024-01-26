import 'package:flutter/material.dart';

class NavigatorManager{
  NavigatorManager._();
  static NavigatorManager instance = NavigatorManager._();
  final GlobalKey<NavigatorState> _navigatorGlobalKey = GlobalKey();

  GlobalKey<NavigatorState> get navigatorGlobalKey  => _navigatorGlobalKey;

  void pushNamedToWidget({required String routeName}){
    _navigatorGlobalKey.currentState?.pushNamed(routeName);
  }
  void pushReplacementNamedToWidget({required String routeName}){
    _navigatorGlobalKey.currentState?.pushReplacementNamed(routeName);
  }
}