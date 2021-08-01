import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movea_app/config/themes/dark_theme.dart';
import 'package:movea_app/constants/app_constants.dart';
import 'package:movea_app/widgets/top_bar.dart';

class SelectCinemaPage extends StatelessWidget {
  const SelectCinemaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TopBarCard(
              content: 'Ralph Break the\nInternet',
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: MediaQuery.of(context).size.height / 14,
              width: MediaQuery.of(context).size.width - 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: kColorWhite)),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                          decoration: InputDecoration(
                    hintText: 'Select Your Country',
                    icon: FaIcon(
                      FontAwesomeIcons.mapMarkerAlt,
                      color: kColorWhite,
                    ),
                    border: InputBorder.none,
                  ))),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: kColorWhite,
                    size: 30,
                  )
                ],
              ),
            ),
            Text(
              'Choose Date',
              style: kTextTittleStyle,
            ),
            Row(
              children: [],
            )
          ],
        ),
      ),
    );
  }
}
