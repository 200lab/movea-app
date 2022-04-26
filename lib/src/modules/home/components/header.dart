
import 'package:flutter/material.dart';

import '../../../config/text_style.dart';
import '../../../constants/asset_path.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(top: 64, left:24, right: 24),
      child: SizedBox(
        height: size.height/10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Find Your Best\nMovie',style: TxtStyle.heading1SemiBold,),
            CircleAvatar(
              radius: size.height/24,
              backgroundImage: AssetImage(AssetPath.iconProfile),
            )
          ],
        ),
      ),);
  }
}
