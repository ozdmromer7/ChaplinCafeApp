import 'package:chaplin_cafe_app/config/routes/navigator_manager.dart';
import 'package:chaplin_cafe_app/config/routes/route_name.dart';
import 'package:flutter/material.dart';

class StoryItemComponent extends StatelessWidget {
  const StoryItemComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        NavigatorManager.instance
            .pushNamedToWidget(routeName: RouteName.storyViewer);
      },
      child: Container(
        width: 110,
        height: 110,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFF0166),
              Color(0xFF8A3FFC),
              Color(0xFFF77737),
              Color(0xFFFCAF45),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          shape: BoxShape.circle,
        ),
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: ClipOval(
            child: Image.asset(
              'assets/images/chaplin_logo.jpeg',
              fit: BoxFit.cover,
              width: 100,
            ),
          ),
        ),
      ),
    );
  }
}
