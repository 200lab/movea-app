import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';

class TopBarCard extends StatelessWidget {
  final content;

  const TopBarCard({Key? key, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          decoration: BoxDecoration(border: Border.all(color: Colors.white)),
          alignment: Alignment.center,
          child: Text(
            content,
            textAlign: TextAlign.center,
            style: TxtStyle.heading1,
          )),
      Container(
        margin: EdgeInsets.only(left: 10, top: 5),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: FaIcon(
            FontAwesomeIcons.arrowLeft,
            color: DarkTheme.white,
          ),
        ),
      )
    ]);
  }
}
