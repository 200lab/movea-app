import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movea_app/config/routes/routes.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/constants/assets_path.dart';
import 'package:movea_app/widgets/stful/toggle_button.dart';
import 'package:movea_app/widgets/stless/classic_button.dart';

class SelectSeatPage extends StatelessWidget {
  const SelectSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    final List<String> seatRow = ['A', 'B', 'C', 'D', 'E'];
    final List<String> seatNumber = ['1', '2', '3', '4', '5', '6'];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  height: 48,
                  width: 48,
                  alignment: Alignment.centerLeft,
                  child: FaIcon(
                    FontAwesomeIcons.arrowLeft,
                    color: DarkTheme.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  'Ralph Breaks The Internet',
                  style: TxtStyle.heading3Medium,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text('FX Sudirman XXI', style: TxtStyle.heading4Light),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildTypeBox(DarkTheme.darkBackground, 'Available'),
                    buildTypeBox(DarkTheme.greyBackground, 'Booked'),
                    buildTypeBox(DarkTheme.blueMain, 'Your Seat'),
                    // Text('Booked'),
                    // Text('Your Seat')
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: seatRow
                      .map((row) => Builder(builder: (context) {
                            return Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: seatNumber.map((number) {
                                  return Container(
                                    width: 48,
                                    height: 48,
                                    child: ToggleButton(
                                        child: Center(
                                            child: Text(
                                      row + number,
                                      style: TxtStyle.heading3Medium,
                                    ))),
                                  );
                                }).toList());
                          }))
                      .toList(),
                ),
              ),
              Container(
                  alignment: Alignment.center,
                  width: size.width,
                  child: Text(
                    'Screen',
                    style: TxtStyle.heading4Light,
                  )),
              Container(
                child: Image.asset(AssetPath.screenx2),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Total Price',
                          style: TxtStyle.heading4Light,
                        ),
                        Text(
                          'VND 150.000',
                          style: TxtStyle.heading3Medium,
                        )
                      ],
                    ),
                    GradientButton(
                      gradientColor1: GradientPalette.blue1,
                      gradientColor2: GradientPalette.blue2,
                      width: size.width / 3,
                      height: size.height / 16,
                      child: Text('Book Ticket',style: TxtStyle.heading4,),
                      onTap: () {
                        Navigator.pushNamed(context, Routes.checkOutMoviePage);
                      },
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

  Container buildTypeBox(Color color, String content) {
    return Container(
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: 5),
            height: 24,
            width: 24,
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(4)),
          ),
          Text(
            content,
            style: TxtStyle.heading4Light,
          ),
        ],
      ),
    );
  }
}
