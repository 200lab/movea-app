import 'package:flutter/material.dart';
import 'package:movea_app/config/routes/routes.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/modules/home/screens/success_checkout_page.dart';
import 'package:movea_app/widgets/stful/toggle_button.dart';
import 'package:movea_app/widgets/stless/classic_button.dart';
import 'package:movea_app/widgets/stless/top_bar.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          TopBarCard(
            content: 'Top Up',
            height: 48,
          ),
          SizedBox(height: size.width / 8),
          Container(
            alignment: Alignment.center,
            height: size.height / 14,
            width: size.width,
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: DarkTheme.white,
                )),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Amount',
                hintStyle: TxtStyle.heading3Light,
              ),
            ),
          ),
          SizedBox(height: 30),
          buildAmountRow(size.height, '50.000', '100.000'),
          SizedBox(height: 20),
          buildAmountRow(size.height, '150.000', '200.000'),
          SizedBox(height: 20),
          buildAmountRow(size.height, '250.000', '500.000'),
          SizedBox(height: 20),
          buildAmountRow(size.height, '700.000', '1.000.000'),
          SizedBox(height: size.width / 5),
          GradientButton(
            gradientColor1: GradientPalette.blue1,
            gradientColor2: GradientPalette.blue2,
            child: Text('Top Up Now'),
            height: size.height / 14,
            width: size.width * 4 / 5,
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => SuccessCheckoutPage(
                          onTap: () {
                            Navigator.pushNamed(context, Routes.rootPage);
                          },
                          contentMain: 'Yummy',
                          contentDescription:
                              'You have successfully\ntop up the wallet',
                          contentButton: 'My Wallet')));
            },
          )
        ],
      )),
    );
  }

  Container buildAmountRow(
      double height, String amountLeft, String amountRight) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: height / 12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ToggleButton(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'IDR',
                style: TxtStyle.heading3Light,
              ),
              Text(
                amountLeft,
                style: TxtStyle.heading3,
              ),
            ]),
          ),
          SizedBox(width: 20),
          ToggleButton(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                'IDR',
                style: TxtStyle.heading3Light,
              ),
              Text(
                amountRight,
                style: TxtStyle.heading3,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
