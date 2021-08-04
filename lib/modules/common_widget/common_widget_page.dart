import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/constants/assets_path.dart';
import 'package:movea_app/widgets/stless/classic_button.dart';
import 'package:movea_app/widgets/top_bar.dart';

class CommonWidgetPage extends StatelessWidget {
  const CommonWidgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final List<Color> gradientMain = [Color(0xFF3E60F9), Color(0xFF3D54F8)];
    final List<Color> gradientLightBlue = [
      Color(0xFF449EFF),
      Color(0xFF1DC7F7).withOpacity(0.94)
    ];

    return Scaffold(
      body: ListView(
        children: [
          buildSizedBox(),
          TopBarCard(
            content: 'Create New\nYour Account',
          ),
          buildSizedBox(),
          Text(
            'Heading 1',
            style: TxtStyle.heading1,
          ),
          Text(
            'Heading 2',
            style: TxtStyle.heading2,
          ),
          Text(
            'Heading 3',
            style: TxtStyle.heading3,
          ),
          Text(
            'Heading 4',
            style: TxtStyle.heading4,
          ),
          GradientText(
            'Gradient Text\nHeading 4 size',
            gradient: LinearGradient(colors: <Color>[
              GradientPalette.gradientLightBlue1,
              GradientPalette.gradientLightBlue2
            ]),
          ),
          buildSizedBox(),
          ClassicButton(
            height: height / 14,
            width: width * 4 / 5,
            color: DarkTheme.blueMain,
            child: Text(
              'Classic Button',
              style: TxtStyle.heading3,
            ),
            onTap: () {},
          ),
          buildSizedBox(),
          GradientButton(
            gradientColor1: GradientPalette.gradientBlue1,
            gradientColor2: GradientPalette.gradientBlue2,
            height: height / 14,
            child: Text(
              'Gradient Button',
              style: TxtStyle.heading3,
            ),
          ),
          buildSizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SquareGradientButton(
                  onTap: () {},
                  gradientColor1: GradientPalette.gradientBlue1,
                  gradientColor2: GradientPalette.gradientBlue2,
                  edge: height / 14,
                  radidus: 14,
                  child: ImageIcon(AssetImage(AssetPath.iconControl),
                      color: DarkTheme.white)),
              SquareGradientButton(
                  onTap: () {},
                  gradientColor1: GradientPalette.gradientLightBlue1,
                  gradientColor2: GradientPalette.gradientLightBlue2,
                  edge: height / 14,
                  radidus: 100,
                  child: ImageIcon(AssetImage(AssetPath.iconTopUp),
                      color: DarkTheme.white)),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: width / 10,
                  height: width / 10,
                  decoration: BoxDecoration(
                      color: DarkTheme.blueMain, shape: BoxShape.circle),
                  child: ImageIcon(
                    AssetImage(AssetPath.iconPlay),
                    color: DarkTheme.white,
                  ),
                ),
              )
            ],
          ),
          buildSizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleButton(
                assetPath: AssetPath.iconAdd,
                bgColor: DarkTheme.blueMain,
                onTap: () {},
              ),
              CircleButton(
                assetPath: AssetPath.iconCancel,
                bgColor: DarkTheme.red,
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }

  SizedBox buildSizedBox() {
    return SizedBox(
      height: 30,
    );
  }
}
