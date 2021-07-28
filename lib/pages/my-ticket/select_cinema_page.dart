import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movea_app/values/app_color.dart';
import 'package:movea_app/widgets/top_bar.dart';

class SelectCinemaPage extends StatelessWidget {
  const SelectCinemaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkerBackground,
      body: SafeArea(
        child: Column(
          children: [
            TopBarCard(
              content: 'Ralph Break the\nInternet',
            ),
            Container(
              height: MediaQuery.of(context).size.height / 14,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: AppColor.white)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                      child: TextField(
                          decoration: InputDecoration(
                    hintText: 'Select Your Country',
                    icon: FaIcon(
                      FontAwesomeIcons.mapMarkerAlt,
                      color: AppColor.white,
                    ),
                    border: InputBorder.none,
                  )))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
