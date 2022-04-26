import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../config/app_color.dart';
import '../../../config/text_style.dart';
import '../../../constants/asset_path.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: SizedBox(
        height: size.height / 15,
        child: Row(
          children: [
            Expanded(
                child: Container(
              height: size.height / 15,
              decoration: BoxDecoration(
                  color: DarkTheme.darkBackground,
                  borderRadius: BorderRadius.circular(22)),
              child: Row(
                children: const [
                  Padding(
                    padding: EdgeInsets.only(left: 24, right: 12),
                    child: FaIcon(
                      FontAwesomeIcons.magnifyingGlass,
                      color: DarkTheme.white,
                    ),
                  ),
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Search Movie',
                        hintStyle: TxtStyle.heading3Medium,
                        border: InputBorder.none),
                  )),
                ],
              ),
            )),
            Container(
              margin: EdgeInsets.only(left: 16),
              width: size.height / 15,
              height: size.height / 15,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      GradientPalette.blue1,
                      GradientPalette.blue2,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(14)),
              child: Image.asset(AssetPath.iconControl),
            )
          ],
        ),
      ),
    );
  }
}
