import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final width;
  final height;
  final radius;
  final clr;
  final child;
  final fnc;

  const CustomButton(
      {Key? key,
      this.width,
      this.height,
      this.radius,
      this.clr,
      this.child,
      this.fnc})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: fnc,
      child: Container(
          alignment: Alignment.center,
          height: height,
          width: width,
          decoration: BoxDecoration(
              color: clr, borderRadius: BorderRadius.circular(radius)),
          child: child),
    );
  }
}
