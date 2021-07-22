import 'package:flutter/material.dart';
import 'package:movea_app/values/app_color.dart';

class CustomButton {
  static Widget btnDate() {
    return Container(
      height: 80,
      width: 60,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(14)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('SAT'),
          Text('21')
        ],
      ),
    );
  }
}
