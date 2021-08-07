import 'package:flutter/material.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';

class BottomSentence extends StatelessWidget {
  final content1;
  final content2;
  final fnc;

  const BottomSentence({Key? key, this.content1, this.content2, this.fnc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          content1,
          style: TxtStyle.heading4Light,
        ),
        InkWell(
          onTap: fnc,
          child: GradientText(
            content2,
            gradient: LinearGradient(colors: <Color>[
              GradientPalette.lightBlue1,
              GradientPalette.lightBlue2
            ]),
          ),
        )
      ],
    );
  }
}
