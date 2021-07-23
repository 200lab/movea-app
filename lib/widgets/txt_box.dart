import 'package:flutter/material.dart';
import 'package:movea_app/values/app_color.dart';

class TxtBox extends StatelessWidget {
  final height;
  final content;

  const TxtBox({Key? key, this.height,this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(30, 15, 30, 0),
          height: height,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColor.blueMain)),
          child: TextField(),
        ),
        Container(
          color: AppColor.darkerBackground,
          margin: EdgeInsets.only(left: MediaQuery.of(context).size.width/9),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              content,
              style: TextStyle(
                color: AppColor.blueMain,
              fontSize: 20),
            ),
          ),
        )
      ],
    );
  }
}
