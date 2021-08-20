import 'package:flutter/material.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';

class SessionTitle extends StatelessWidget {
  final String content;
  const SessionTitle({Key? key, required this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            content,
            style: TxtStyle.heading2,
          ),
          GradientText(
            'View All',
            gradient: LinearGradient(colors: <Color>[
              GradientPalette.lightBlue1,
              GradientPalette.lightBlue2
            ]),
          ),
        ],
      ),
    );
  }
}
