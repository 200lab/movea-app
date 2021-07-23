import 'package:flutter/material.dart';
import 'package:movea_app/pages/new-user/sign_in.dart';
import 'package:movea_app/values/app_color.dart';
import 'package:movea_app/values/text_style.dart';
import 'package:movea_app/widgets/custom_button.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColor.darkerBackground,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Image.asset('assets/illustrations/logo.png'),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text('New Experience', style: TxtStyle.tittleStyle)),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'Watch a new movie much \n easier than before',
                  style: TxtStyle.thinStyle,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: CustomButton(
                  width: MediaQuery.of(context).size.width / 1.5,
                  height: MediaQuery.of(context).size.height / 13,
                  radius: 20.0,
                  clr: AppColor.blueMain,
                  child: Center(
                    child: Text(
                      'Get Started',
                      style: TxtStyle.btnTxtStyle,
                    ),
                  ),
                  fnc: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => SignInPage()));
                  },
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an Account? ',
                      style: TxtStyle.smallThinStyle,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          color: AppColor.lightBlue,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
