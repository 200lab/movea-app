import 'package:flutter/material.dart';
import 'package:movea_app/config/routes/routes.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/constants/assets_path.dart';
import 'package:movea_app/widgets/stless/classic_button.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(AssetPath.iconLogo),
            ),
            Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text('New Experience', style: TxtStyle.heading1Medium)),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                'Watch a new movie much \n easier than before',
                style: TxtStyle.heading3Light,
                textAlign: TextAlign.center,
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 80),
                child: GradientButton(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.signInPage);
                  },
                  gradientColor1: GradientPalette.lightBlue1,
                  gradientColor2: GradientPalette.lightBlue2,
                  width: size.width * 4 / 5,
                  height: size.height / 14,
                  child: Text(
                    'Get Started',
                    style: TxtStyle.heading3Medium,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
