import 'package:flutter/material.dart';
import 'package:movea_app/constants/assets_path.dart';

class CustomCircleAvatar extends StatelessWidget {
  final height;
  final width;
  const CustomCircleAvatar({Key? key, this.height, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AssetPath.iconProfile),
          ),
        ),
      ),
    );
  }
}