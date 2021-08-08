import 'package:flutter/material.dart';
import 'package:movea_app/config/themes/app_color.dart';

class TxtStyle {
  static const heading1 =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 30, height: 1.2);
  static const heading2 = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 24,
      height: 1.2,
      decoration: TextDecoration.none,
      color: DarkTheme.white);
  static const heading3 =
      TextStyle(fontWeight: FontWeight.w400, fontSize: 20, height: 1.2);
  static const heading4 = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 1.2,
      decoration: TextDecoration.none,
      color: DarkTheme.white);

  static const heading1SemiBold = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 30,
  );

  static const heading1Medium = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 30,
    height: 1.2,
  );
  static const heading3Medium = TextStyle(
      fontWeight: FontWeight.w300,
      fontSize: 20,
      height: 1.2,
      decoration: TextDecoration.none,
      color: DarkTheme.white);

  static const heading3Light = TextStyle(
      fontWeight: FontWeight.w200,
      fontSize: 20,
      height: 1.2,
      color: DarkTheme.white,
      decoration: TextDecoration.none);
  static const heading4Light = TextStyle(
      fontWeight: FontWeight.w200,
      fontSize: 16,
      height: 1.2,
      color: DarkTheme.white,
      decoration: TextDecoration.none);
}

class GradientText extends StatelessWidget {
  GradientText(
    this.text, {
    @required this.gradient,
  });

  final String text;
  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => gradient!.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        text,
        style: TextStyle(
          // The color must be set to white for this to work
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
