import 'package:chaplin_cafe_app/config/routes/route_name.dart';
import 'package:chaplin_cafe_app/features/presentation/auth/register/register_screen.dart';
import 'package:chaplin_cafe_app/features/presentation/home/branch_page/branch_page.dart';
import 'package:chaplin_cafe_app/features/presentation/home/home_page/components/story_view.dart';
import 'package:chaplin_cafe_app/features/presentation/home/mainpage/main_page.dart';
import 'package:chaplin_cafe_app/features/presentation/qr_scanner/qr_scanner.dart';
import 'package:flutter/material.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.register:
        return MaterialPageRoute(builder: (_) => RegisterScreen());

      case RouteName.home:
        return MaterialPageRoute(builder: (_) => const MainScreen());

      case RouteName.branch:
        return MaterialPageRoute(builder: (_) => const BranchesScreen());

      case RouteName.qrScanner:
        return MaterialPageRoute(builder: (_) => const QRScannerPage());

      case RouteName.storyViewer:
        return MaterialPageRoute(builder: (_) => StoryViewItem());

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  appBar: AppBar(),
                ));
    }
  }
}
