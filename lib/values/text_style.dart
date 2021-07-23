import 'package:flutter/cupertino.dart';
import 'package:movea_app/values/app_color.dart';

class TxtStyle {
  static TextStyle tittleStyle = TextStyle(
    fontSize: 28,
    color: AppColor.white,
    fontWeight: FontWeight.w600,
    // TextStyle(
    //     color: AppColor.white,
    //     fontSize: 30,
    //     fontWeight: FontWeight.w500,
    //     height: 1.5),
  );

  static TextStyle thinStyle = TextStyle(
      fontSize: 22,
      color: AppColor.white,
      fontWeight: FontWeight.w200,
      height: 1.3);

  static TextStyle smallThinStyle = TextStyle(
      fontSize: 18,
      color: AppColor.white,
      fontWeight: FontWeight.w200,
      height: 1.3);

  static TextStyle btnTxtStyle = TextStyle(
      fontSize: 22, color: AppColor.white, fontWeight: FontWeight.w500);
}
