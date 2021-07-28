import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movea_app/values/app_color.dart';
import 'package:movea_app/values/text_style.dart';
import 'package:movea_app/widgets/circle_avatar.dart';
import 'package:movea_app/widgets/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.darkerBackground,
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            children: [
              Row(
                children: [
                  Expanded(
                      child: Text(
                    'Find Your Best\nMovie',
                    style: TxtStyle.tittleStyle,
                  )),
                  CustomCircleAvatar(
                    height: MediaQuery.of(context).size.height / 14,
                    width: MediaQuery.of(context).size.height / 14,
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomButton(
                      height: MediaQuery.of(context).size.height / 14,
                      radius: 20.0,
                      clr: AppColor.darkBackground,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: FaIcon(
                              FontAwesomeIcons.search,
                              color: AppColor.white,
                            ),
                          ),
                          Text(
                            'Search Movie',
                            style: TxtStyle.btnTxtStyle,
                          )
                        ],
                      ),
                      fnc: () {},
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  CustomButton(
                    height: MediaQuery.of(context).size.height / 14,
                    width: MediaQuery.of(context).size.height / 14,
                    radius: 20.0,
                    clr: AppColor.blueMain,
                    child: ImageIcon(AssetImage('assets/icons/Control.png'),
                        color: AppColor.white),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),

            ],
          ),
        ));
  }
}
