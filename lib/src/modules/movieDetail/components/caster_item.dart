import 'package:flutter/material.dart';

import '../../../config/text_style.dart';
import '../../../models/cast.dart';

class CasterItem extends StatelessWidget {
  const CasterItem({Key? key, required this.size, required this.cast})
      : super(key: key);

  final Size size;
  final Cast cast;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, bottom: 4),
          child: Container(
            width: size.width / 4.5,
            height: size.width / 4.5,
            decoration: BoxDecoration(
                image:
                DecorationImage(image: AssetImage(cast.profileImageUrl))),
          ),
        ),
        Text(
          cast.name,
          style: TxtStyle.heading4Light,
        )
      ],
    );
  }
}