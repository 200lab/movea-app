import 'package:flutter/material.dart';
import 'package:movea_app/pages/my-ticket/home_page.dart';
import 'package:movea_app/values/app_color.dart';
import 'package:movea_app/values/text_style.dart';
import 'package:movea_app/widgets/circle_avatar.dart';
import 'package:movea_app/widgets/custom_button.dart';
import 'package:movea_app/widgets/top_bar.dart';

class ConfirmNewPage extends StatefulWidget {
  const ConfirmNewPage({Key? key}) : super(key: key);

  @override
  _ConfirmNewPageState createState() => _ConfirmNewPageState();
}

class _ConfirmNewPageState extends State<ConfirmNewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkerBackground,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TopBarCard(
              content: 'Confirm New\nAccount',
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 8,
            ),
            CustomCircleAvatar(
              height: MediaQuery.of(context).size.height/5,
              width: MediaQuery.of(context).size.height/5,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 12,
            ),
            Text(
              'Welcome',
              style: TxtStyle.smallThinStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Banhsmif',
              style: TxtStyle.btnTxtStyle,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 12,
            ),
            CustomButton(
              width: MediaQuery.of(context).size.width * 4 / 5,
              height: MediaQuery.of(context).size.height / 14,
              radius: 20.0,
              clr: AppColor.blueMain,
              child: Text('Create My Account', style: TxtStyle.btnTxtStyle),
              fnc: () {
                Navigator.push(context,MaterialPageRoute(builder: (_)=> HomePage()));
              },
            )
          ],
        ),
      ),
    );
  }
}
