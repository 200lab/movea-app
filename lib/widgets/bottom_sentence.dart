import 'package:flutter/material.dart';
import 'package:movea_app/values/app_color.dart';
import 'package:movea_app/values/text_style.dart';

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
          style: TxtStyle.fieldTextStyle,
        ),
        InkWell(
          onTap: fnc,
          child: Text(
            content2,
            style: TextStyle(
                fontSize: 16,
                color: AppColor.lightBlue,
                fontWeight: FontWeight.w600),
          ),
        )
      ],
    );
  }
}
