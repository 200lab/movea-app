import 'package:flutter/material.dart';
import 'package:movea_app/constants/assets_path.dart';

class CustomCircleAvatar extends StatelessWidget {
  final double height;
  final double width;
  final VoidCallback onTap;
  const CustomCircleAvatar(
      {Key? key,
      required this.height,
      required this.width,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ClipOval(
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
      ),
    );
  }
}
