import 'package:flutter/material.dart';

class TxtStyle {
  static const heading1 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 32,
    height: 1.2,
  );
  static const heading2 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 28, height: 1.2);
  static const heading3 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 24, height: 1.2);
  static const heading4 =
      TextStyle(fontWeight: FontWeight.w600, fontSize: 20, height: 1.2);
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
          fontSize: 20,
        ),
      ),
    );
  }
}
