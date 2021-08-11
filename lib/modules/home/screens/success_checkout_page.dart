import 'package:flutter/material.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/constants/assets_path.dart';
import 'package:movea_app/modules/home/screens/home_page.dart';
import 'package:movea_app/widgets/stless/bottom_sentence.dart';
import 'package:movea_app/widgets/stless/classic_button.dart';

class WalletCheckoutPage extends StatelessWidget {
  const WalletCheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: DarkTheme.darkBackground
                  ),
            ),
            Text(
              'Happy Watching!',
              style: TxtStyle.heading1,
            ),
            Text(
              'You have successfully\nbought the ticket',
              style: TxtStyle.heading3Light,
              textAlign: TextAlign.center,
            ),
            GradientButton(
              gradientColor1: GradientPalette.blue1,
              gradientColor2: GradientPalette.blue2,
              height: MediaQuery.of(context).size.height / 14,
              width: MediaQuery.of(context).size.width * 4 / 5,
              child: Text('My Ticket',style: TxtStyle.heading3,),
            ),
            BottomSentence(
              content1: 'Discover new movie? ',
              content2: 'Back to home',
              fnc: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (_) => HomePage()));
              },
            )
          ],
        ),
      ),
    );
  }
}
