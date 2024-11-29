import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key,
      required this.appBarTitle,
      this.actionWidget,
      this.leading,
      this.automaticallyImplyLeading});

  final String appBarTitle;
  final Widget? actionWidget;
  final Widget? leading;
  final bool? automaticallyImplyLeading;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: SizedBox(
        height: kToolbarHeight,
        child:
            Image.asset('assets/images/chaplin_logo.jpeg', fit: BoxFit.contain),
      ),
      automaticallyImplyLeading: automaticallyImplyLeading ?? true,
      backgroundColor: Colors.white,
      centerTitle: true,
      leading: leading,
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: actionWidget,
        ),
      ],
    );
  }
}
