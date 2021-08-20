import 'package:flutter/material.dart';
import 'package:movea_app/config/themes/text_style.dart';

class SessionSingleTitle extends StatelessWidget {
  const SessionSingleTitle(
      {Key? key, required this.width, required this.content})
      : super(key: key);

  final double width;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      // padding: EdgeInsets.only(left: 20, bottom: 30, top: 30),
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        content,
        style: TxtStyle.heading2,
      ),
    );
  }
}