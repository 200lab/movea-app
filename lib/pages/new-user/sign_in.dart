import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movea_app/pages/new-user/sign_up.dart';
import 'package:movea_app/values/app_color.dart';
import 'package:movea_app/values/text_style.dart';
import 'package:movea_app/widgets/bottom_sentence.dart';
import 'package:movea_app/widgets/custom_button.dart';
import 'package:movea_app/widgets/txt_box.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkerBackground,
      body: Column(
        children: [
          Expanded(flex: 2, child: Container()),
          Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Image.asset('assets/illustrations/logo.png'),
              )),
          Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.only(left: 30),
                alignment: Alignment.centerLeft,
                child: Text('Welcome Back,\nMovie Lover!',
                    style: TxtStyle.tittleStyle),
              )),
          Expanded(
              flex: 4,
              child: Container(
                child: Column(
                  children: [
                    TxtBox(
                      height: MediaQuery.of(context).size.height / 14,
                      content: 'Email Address',
                    ),
                    SizedBox(height: 10),
                    TxtBox(
                      height: MediaQuery.of(context).size.height / 14,
                      content: 'Password',
                    ),
                  ],
                ),
              )),
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(top: 10, right: 30),
                child: Text(
                  'Forget Password?',
                  style: TxtStyle.fieldTextStyle,
                ),
              )),
          CustomButton(
            width: MediaQuery.of(context).size.width * 3 / 5,
            height: MediaQuery.of(context).size.height / 14,
            radius: 20.0,
            clr: AppColor.blueMain,
            child: Text(
              'Login',
              style: TextStyle(
                fontSize: 20,
                color: AppColor.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            fnc: () {},
          ),
          Expanded(
              flex: 1,
              child: BottomSentence(
                content1: 'Create new account?',
                content2: 'Sign Up',
                fnc: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => SignUpPage()));
                },
              )),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                      color: AppColor.darkBackground,
                      borderRadius: BorderRadius.circular(100)),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                      color: AppColor.darkBackground,
                      borderRadius: BorderRadius.circular(100)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
