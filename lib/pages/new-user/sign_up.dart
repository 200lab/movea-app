import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Stack(children: [
                Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Create New\nYour Account',
                      style: TxtStyle.tittleStyle,
                    )),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: AppColor.white,
                    ))
              ]),
            ),
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 6,
                  margin: EdgeInsets.symmetric(vertical: 25),
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.height / 6,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: AppColor.blueMain),
                    ),
                  ),
                ),
                //btn add _ remove
                InkWell(
                  onTap: () {},
                  child: Container(
                      height: MediaQuery.of(context).size.height / 5 + 7,
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
                      )),
                )
              ],
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
                fnc: () {},
              ),
            ),
            Expanded(child: Container())
          ],
        ),
      ),
    );
  }
}
