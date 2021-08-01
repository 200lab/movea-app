import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movea_app/config/themes/dark_theme.dart';
import 'package:movea_app/constants/app_constants.dart';
import 'package:movea_app/widgets/circle_avatar.dart';
import 'package:movea_app/widgets/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController? _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1, viewportFraction: 0.8);
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            children: <Widget>[
              Row(
                children: [
                  Expanded(
                      child: Text(
                    'Find Your Best\nMovie',
                    style: kTextTittleStyle,
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
                      clr: kColorDarkBackground,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 10, left: 20),
                            child: FaIcon(
                              FontAwesomeIcons.search,
                              color: kColorWhite,
                            ),
                          ),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'Search Movie',
                                  hintStyle: kTextThinStyle,
                                  border: InputBorder.none),
                            ),
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
                    clr: kColorBlueMain,
                    child: ImageIcon(AssetImage('assets/icons/Control.png'),
                      color: kColorWhite),
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
