import 'package:flutter/material.dart';
import 'package:movea_app/config/themes/dark_theme.dart';
import 'package:movea_app/constants/app_constants.dart';
import 'package:movea_app/modules/home/screens/home_page.dart';
import 'package:movea_app/widgets/circle_avatar.dart';
import 'package:movea_app/widgets/custom_button.dart';
import 'package:movea_app/widgets/top_bar.dart';

class ConfirmNewScreen extends StatefulWidget {
  const ConfirmNewScreen({Key? key}) : super(key: key);

  @override
  _ConfirmNewScreenState createState() => _ConfirmNewScreenState();
}

class _ConfirmNewScreenState extends State<ConfirmNewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              style: kTextTittleStyle,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Banhsmif',
              style: kTextButtonStyle,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 12,
            ),
            CustomButton(
              width: MediaQuery.of(context).size.width * 4 / 5,
              height: MediaQuery.of(context).size.height / 14,
              radius: 20.0,
              clr: kColorBlueMain,
              child: Text('Create My Account', style: kTextButtonStyle),
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
