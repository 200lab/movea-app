import 'package:flutter/material.dart';
import 'package:movea_app/constants/assets_path.dart';

class CardPromo extends StatelessWidget {
  const CardPromo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        // color: Colors.red,
        image: DecorationImage(image: AssetImage(AssetPath.cardPromo),fit: BoxFit.cover),
      ),
    );
  }
}
