import 'package:chaplin_cafe_app/config/routes/route_name.dart';
import 'package:chaplin_cafe_app/main.dart';
import 'package:flutter/material.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {

    switch (settings.name) {
      case RouteName.home:
        return MaterialPageRoute(builder: (_) => const MyApp());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
              appBar: AppBar(),
            ));
    }
  }
}
