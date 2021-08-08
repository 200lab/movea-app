import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movea_app/config/routes/routes.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/constants/assets_path.dart';
import 'package:movea_app/widgets/stless/bottom_sentence.dart';
import 'package:movea_app/widgets/stless/classic_button.dart';
import 'package:movea_app/widgets/stless/custom_textfiled.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: ListView(
        children: [
          SizedBox(height: 30),
          Container(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              AssetPath.iconLogo,
              scale: 1.3,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 30),
            alignment: Alignment.centerLeft,
            child:
                Text('Welcome Back,\nMovie Lover!', style: TxtStyle.heading1),
          ),
          SizedBox(height: 30),
          Container(
            child: Column(
              children: [
                CustomTextField(
                  height: MediaQuery.of(context).size.height / 14,
                  content: 'Email Address',
                ),
                SizedBox(height: 10),
                CustomTextField(
                  height: MediaQuery.of(context).size.height / 14,
                  content: 'Password',
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            margin: EdgeInsets.only(top: 10, right: 30),
            child: Text(
              'Forgot Password?',
              style: TxtStyle.heading4Light,
            ),
          ),
          SizedBox(height: 30),
          ClassicButton(
            height: height / 14,
            width: width * 3 / 5,
            color: DarkTheme.blueMain,
            child: Text(
              'Login',
              style: TxtStyle.heading3Medium,
            ),
            onTap: () {
              Navigator.pushNamed(context, Routes.homePage);
            },
          ),
          SizedBox(height: 20),

          BottomSentence(
            content1: 'Create new account? ',
            content2: 'Sign Up',
            fnc: () {
              Navigator.pushNamed(context, Routes.signUpPage);
            },
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                    color: DarkTheme.white,
                    borderRadius: BorderRadius.circular(100)),
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                height: 75,
                width: 75,
                decoration: BoxDecoration(
                    color: DarkTheme.white,
                    borderRadius: BorderRadius.circular(100)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
