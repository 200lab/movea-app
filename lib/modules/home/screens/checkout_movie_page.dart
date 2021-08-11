import 'package:flutter/material.dart';
import 'package:movea_app/config/routes/routes.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/modules/home/screens/movie_info_page.dart';
import 'package:movea_app/widgets/stless/classic_button.dart';
import 'package:movea_app/widgets/stless/top_bar.dart';

class CheckOutMoviePage extends StatelessWidget {
  const CheckOutMoviePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TopBarCard(
              content: 'Checkout\nMovie',
            ),
            MovieInfo(width: width),
            SizedBox(height: 20),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('ID Order'),
                  Text('FX Sudirman XXI'),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Your Wallet'),
                  Text('IRD 200.000'),
                ],
              ),
            ),
            GradientButton(
              gradientColor1: GradientPalette.blue1,
              gradientColor2: GradientPalette.blue2,
              width: width*4/5,
              height: height/14,
              child: Text('Checkout',style: TxtStyle.heading3,),
              onTap: (){
                Navigator.pushNamed(context, Routes.walletCheckoutPage);
              },
            )
          ],
        ),
      ),
    );
  }
}
