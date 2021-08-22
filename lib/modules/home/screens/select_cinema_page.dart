import 'package:flutter/material.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/constants/app_constants.dart';
import 'package:movea_app/constants/assets_path.dart';
import 'package:movea_app/modules/home/widgets/time_bar.dart';
import 'package:movea_app/widgets/stful/date_button.dart';
import 'package:movea_app/widgets/stless/classic_button.dart';
import 'package:movea_app/widgets/stless/top_bar.dart';

class SelectCinemaPage extends StatelessWidget {
  const SelectCinemaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TopBarCard(
              content: 'Ralph Break the\nInternet',
              height: AppConstant.doubleLineHeight,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: MediaQuery.of(context).size.height / 14,
              width: MediaQuery.of(context).size.width - 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: DarkTheme.white)),
              child: Row(
                children: [
                  Expanded(
                      child: TextField(
                          decoration: InputDecoration(
                    hintText: 'Select Your Country',
                    hintStyle: TxtStyle.heading4Light,
                    icon: ImageIcon(
                      AssetImage(AssetPath.iconLocation),
                      color: DarkTheme.white,
                    ),
                    border: InputBorder.none,
                  ))),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: DarkTheme.white,
                    size: 30,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            titleBar(size.width, 'Choose Date'),
            SizedBox(
              height: 10,
            ),
            Container(
              width: size.width,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DateButton(
                    ticketState: TicketStates.Busy,
                    width: size.width,
                    height: size.height,
                    day: '21',
                    weekday: 'SAT',
                  ),
                  DateButton(
                    ticketState: TicketStates.Active,
                    width: size.width,
                    height: size.height,
                    day: '21',
                    weekday: 'SAT',
                  ),
                  DateButton(
                    ticketState: TicketStates.Idle,
                    width: size.width,
                    height: size.height,
                    day: '21',
                    weekday: 'SAT',
                  ),
                  DateButton(
                    ticketState: TicketStates.Busy,
                    width: size.width,
                    height: size.height,
                    day: '21',
                    weekday: 'SAT',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            titleBar(size.width, 'Central Park CGV'),
            SizedBox(
              height: 10,
            ),
            TimeBar(height: size.height, width: size.width),
            SizedBox(
              height: 15,
            ),
            titleBar(size.width, 'FX Sudirman XXI'),
            SizedBox(
              height: 10,
            ),
            TimeBar(height: size.height, width: size.width),
            SizedBox(
              height: 15,
            ),
            titleBar(size.width, 'Kelapa Gading IMAX'),
            SizedBox(
              height: 10,
            ),
            TimeBar(height: size.height, width: size.width),
            SizedBox(
              height: 30,
            ),
            SquareGradientButton(
                onTap: () {
                },
                gradientColor1: GradientPalette.blue1,
                gradientColor2: GradientPalette.blue2,
                edge: size.height / 14,
                radidus: 100,
                child: ImageIcon(AssetImage(AssetPath.iconNext),
                    color: DarkTheme.white)),
          ],
        ),
      ),
    );
  }

  Container titleBar(double width, String content) {
    return Container(
      width: width,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        content,
        style: TxtStyle.heading2,
      ),
    );
  }
}
