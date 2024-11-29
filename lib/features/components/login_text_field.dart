import 'package:chaplin_cafe_app/config/theme/theme_notifier.dart';
import 'package:flutter/material.dart';

class LoginText extends StatelessWidget {
  const LoginText(
      {super.key,
      required this.controller,
      required this.prefixIcon,
      required this.hintText});
  final TextEditingController controller;
  final Icon prefixIcon;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Boş olamaz';
          }
          return null;
        },
        style: context.theme?.textTheme.displayMedium,
        decoration: InputDecoration(prefixIcon: prefixIcon, hintText: hintText),
        controller: controller);
  }
}
