import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';

class StarsBar extends StatelessWidget {
  const StarsBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.only(left: 10, bottom: 20),
      child: Row(
        children: [
          star(),
          star(),
          star(),
          star(),
          star(),
          Text(
            '(5.0)',
            style: TxtStyle.heading4Light,
          )
        ],
      ),
    );
  }

  Padding star() {
    return Padding(
      padding: const EdgeInsets.only(right: 4),
      child: FaIcon(
        FontAwesomeIcons.solidStar,
        size: 10,
        color: DarkTheme.yellow,
      ),
    );
  }
}
