import 'package:flutter/material.dart';
import 'package:movea_app/config/routes/routes.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/constants/app_constants.dart';
import 'package:movea_app/widgets/stless/circle_avatar.dart';
import 'package:movea_app/widgets/stless/classic_button.dart';
import 'package:movea_app/widgets/stless/top_bar.dart';

class ConfirmNewPage extends StatefulWidget {
  const ConfirmNewPage({Key? key}) : super(key: key);

  @override
  _ConfirmNewPageState createState() => _ConfirmNewPageState();
}

class _ConfirmNewPageState extends State<ConfirmNewPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TopBarCard(
              content: 'Confirm New\nAccount',
              height: AppConstant.doubleLineHeight,
            ),
            SizedBox(
              height: size.height / 8,
            ),
            CustomCircleAvatar(
              height: size.height / 5.5,
              width: size.height / 5.5,
              onTap: () {},
            ),
            SizedBox(
              height: size.height / 12,
            ),
            Text(
              'Welcome',
              style: TxtStyle.heading3Light,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Quang Nguyễn',
              style: TxtStyle.heading1Medium,
            ),
            SizedBox(
              height: size.height / 12,
            ),
            GradientButton(
              gradientColor1: GradientPalette.blue1,
              gradientColor2: GradientPalette.blue2,
              height: size.height / 14,
              width: size.width * 4 / 5,
              child: Text(
                'Create My Account',
                style: TxtStyle.heading3Medium,
              ),
              onTap: () {
                Navigator.pushNamed(context, Routes.rootPage);
              },
            )
          ],
        ),
      ),
    );
  }
}
