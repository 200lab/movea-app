import 'package:flutter/material.dart';
import 'package:movea_app/values/app_color.dart';
import 'package:movea_app/values/home_page.dart';
import 'package:movea_app/values/text_style.dart';
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
            Container(
              height: MediaQuery.of(context).size.height / 5,
              width: MediaQuery.of(context).size.height / 5,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/illustrations/photo_profile.png'),
                ),
              ),
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
