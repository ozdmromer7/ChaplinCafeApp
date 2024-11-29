import 'package:chaplin_cafe_app/config/routes/navigator_manager.dart';
import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryViewItem extends StatelessWidget {
  StoryViewItem({super.key});

  final StoryController _storyController = StoryController();

  @override
  Widget build(BuildContext context) {
    return StoryView(
      storyItems: _storyItems,
      repeat: false,
      controller: _storyController,
      onComplete: () {
        NavigatorManager.instance.pop();
      },
    );
  }

  final List<StoryItem> _storyItems = [
    StoryItem.inlineImage(
        url: 'https://picsum.photos/850?image=9',
        controller: StoryController(),
        imageFit: BoxFit.fitWidth),
    StoryItem.inlineImage(
        url: 'https://picsum.photos/850?image=6',
        controller: StoryController(),
        imageFit: BoxFit.fitWidth),
  ];
}
