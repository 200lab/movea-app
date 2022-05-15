import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movea_app/src/config/app_color.dart';
import 'package:movea_app/src/config/text_style.dart';
import 'package:movea_app/src/constants/app_constants.dart';
import 'package:movea_app/src/constants/asset_path.dart';

class SelectCinemaPage extends StatelessWidget {
  const SelectCinemaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                SizedBox(
                  height: size.height / 10,
                  child: const Center(
                    child: Text(
                      'Ralph Breaks the\nInternet',
                      style: TxtStyle.heading1,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16, top: 4),
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const FaIcon(
                      FontAwesomeIcons.arrowLeft,
                      color: DarkTheme.white,
                    ),
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              height: size.height / 14,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: DarkTheme.white)),
              child: Row(
                children: const [
                  Expanded(
                      child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Select Your Contry',
                        hintStyle: TxtStyle.heading4,
                        icon: Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: ImageIcon(
                            AssetImage(AssetPath.iconLocation),
                            color: DarkTheme.white,
                          ),
                        )),
                  )),
                  Padding(
                    padding: EdgeInsets.only(right: 8.0),
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      size: 36,
                      color: DarkTheme.white,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
