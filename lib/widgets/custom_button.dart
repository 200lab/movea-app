import 'package:flutter/material.dart';
import 'package:movea_app/values/app_color.dart';

// class CustomButton {
//   static Widget btnDate(double width, double height, Color clr, Widget child) {
//     return Container(
//         height: height,
//         width: width,
//         decoration:
//             BoxDecoration(color: clr, borderRadius: BorderRadius.circular(14)),
//         child: child);
//   }
// }

class CustomButton extends StatelessWidget {
  final width;
  final height;
  final clr;
  final child;

  const CustomButton(
      {Key? key,
      @required this.width,
      @required this.height,
      @required this.clr,
      @required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration:
            BoxDecoration(color: clr, borderRadius: BorderRadius.circular(14)),
        child: child);
  }
}
