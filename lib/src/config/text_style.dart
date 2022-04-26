import 'package:flutter/material.dart';

import 'app_color.dart';

//define text style right here
class TxtStyle {
  //==========Heading 1=============
  static const heading1 =
  TextStyle(fontWeight: FontWeight.w400, fontSize: 30, height: 1.2);
  static const heading1SemiBold = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 30,
  );
  static const heading1Medium = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 30,
    height: 1.2,
  );

  //==========Heading 2=============
  static const heading2 = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 24,
      height: 1.2,
      decoration: TextDecoration.none,
      color: DarkTheme.white);

  //==========Heading 3=============
  static const heading3 =
  TextStyle(fontWeight: FontWeight.w400, fontSize: 20, height: 1.2);

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

  //==========Heading 4=============
  static const heading4 = TextStyle(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 1.2,
      decoration: TextDecoration.none,
      color: DarkTheme.white);

  static const heading4Light = TextStyle(
      fontWeight: FontWeight.w200,
      fontSize: 16,
      height: 1.2,
      color: DarkTheme.white,
      decoration: TextDecoration.none);
}

class GradientText extends StatelessWidget {
  const GradientText(
      this.text, {
        Key? key,
        @required this.gradient,
      }) : super(key: key);

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
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
