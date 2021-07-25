import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movea_app/pages/new-user/fav_gerne.dart';
import 'package:movea_app/values/app_color.dart';
import 'package:movea_app/values/text_style.dart';
import 'package:movea_app/widgets/custom_button.dart';
import 'package:movea_app/widgets/txt_box.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkerBackground,
      // appBar: AppBar(
      //   title: Text('Create New\nYour Account'),
      // ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Stack(children: [
                Container(
                    alignment: Alignment.center,
                    child: Text(
                      ' Create New\nYour Account',
                      style: TxtStyle.tittleStyle,
                    )),
                Container(
                  margin: EdgeInsets.only(left: 10, top: 5),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: FaIcon(
                      FontAwesomeIcons.arrowLeft,
                      color: AppColor.white,
                    ),
                  ),
                )
              ]),
            ),
            Container(
              width: MediaQuery.of(context).size.height / 6,
              height: MediaQuery.of(context).size.height / 6,
              decoration: BoxDecoration(
                image: DecorationImage(
                  //fit: BoxFit.cover,
                  scale: 0.75,
                  image: AssetImage('assets/illustrations/photo_profile.png'),
                ),
              ),
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                      color: AppColor.blueMain,
                      borderRadius: BorderRadius.circular(100)),
                  child: FaIcon(
                    FontAwesomeIcons.plusCircle,
                    size: 30,
                    color: AppColor.white,
                  ),
                )
              ),
            ),
          
            Expanded(
                child: TxtBox(
              height: MediaQuery.of(context).size.height / 14,
              content: 'Full Name',
            )),
            Expanded(
                child: TxtBox(
              height: MediaQuery.of(context).size.height / 14,
              content: 'Email Address',
            )),
            Expanded(
                child: TxtBox(
              height: MediaQuery.of(context).size.height / 14,
              content: 'Password',
            )),
            Expanded(
                child: TxtBox(
              height: MediaQuery.of(context).size.height / 14,
              content: 'Confirm Password',
            )),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: CustomButton(
                height: MediaQuery.of(context).size.height / 14,
                width: MediaQuery.of(context).size.width * 3 / 5,
                radius: 20.0,
                clr: AppColor.blueMain,
                child: Text(
                  'Sign In',
                  style: TxtStyle.btnTxtStyle,
                ),
                fnc: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => FavoriteGernePage()));
                },
              ),
            ),
            Expanded(child: Container())
          ],
        ),
      ),
    );
  }
}
