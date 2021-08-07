import 'package:flutter/material.dart';
import 'package:movea_app/config/routes/routes.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
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
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TopBarCard(
              content: 'Confirm New\nAccount',
            ),
            SizedBox(
              height: height / 8,
            ),
            CustomCircleAvatar(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.height / 5,
            ),
            SizedBox(
              height: height / 12,
            ),
            Text(
              'Welcome',
              style: TxtStyle.heading3Light,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Banhsmif',
              style: TxtStyle.heading1Medium,
            ),
            SizedBox(
              height: height / 12,
            ),
            GradientButton(
              gradientColor1: GradientPalette.gradientBlue1,
              gradientColor2: GradientPalette.gradientBlue2,
              height: height / 14,
              width: width * 4 / 5,
              child: Text(
                'Create My Account',style: TxtStyle.heading3Medium,
              ),
              onTap: () {
                Navigator.pushNamed(context, Routes.homePage);
              },
            )
          ],
        ),
      ),
    );
  }
}
