import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movea_app/values/app_color.dart';
import 'package:movea_app/values/text_style.dart';

class TopBarCard extends StatelessWidget {
  final content;
  const TopBarCard({Key? key,this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          alignment: Alignment.center,
          child: Text(
            content,
            textAlign: TextAlign.center,
            style: TxtStyle.tittleStyle,
          )),
      Container(
        margin: EdgeInsets.only(left: 10, top: 5),
        child: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: FaIcon(
            FontAwesomeIcons.arrowLeft,
            color: AppColor.white,
          ),
        ),
      )
    ]);
  }
}
