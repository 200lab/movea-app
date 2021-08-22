import 'package:flutter/material.dart';
import 'package:movea_app/config/routes/routes.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/constants/assets_path.dart';
import 'package:movea_app/modules/home/screens/success_checkout_page.dart';
import 'package:movea_app/modules/home/widgets/checkout_info.dart';
import 'package:movea_app/modules/home/widgets/movie_info.dart';
import 'package:movea_app/widgets/stless/classic_button.dart';
import 'package:movea_app/widgets/stless/top_bar.dart';

class CheckOutMoviePage extends StatelessWidget {
  const CheckOutMoviePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TopBarCard(
              content: 'Checkout Movie',
              height: 48,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Row(
                children: [
                  Container(
                    child: Image.asset(AssetPath.posterRalphx2,scale: 1.5),
                  ),
                  MovieInfo()
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              height: 1,
              color: DarkTheme.white,
            ),
            CheckoutInfo(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: TxtStyle.heading4Light,
                  ),
                  Text(
                    'VND 150.000',
                    style: TxtStyle.heading4,
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              height: 1,
              color: DarkTheme.white,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Wallet',
                    style: TxtStyle.heading4Light,
                  ),
                  Text(
                    'IRD 200.000',
                    style: TxtStyle.heading4,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            GradientButton(
              gradientColor1: GradientPalette.blue1,
              gradientColor2: GradientPalette.blue2,
              width: size.width * 4 / 5,
              height: size.height / 14,
              child: Text(
                'Checkout',
                style: TxtStyle.heading3,
              ),
              onTap: () {
                // Navigator.pushNamed(context, Routes.successCheckoutPage);
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SuccessCheckoutPage(
                    contentMain: 'Happy Watching!',
                    contentDescription:
                        'You have successfully\nbought the ticket',
                    contentButton: 'My Ticket',
                    onTap: () {
                      Navigator.pushNamed(context, Routes.rootPage);
                    },
                  );
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}

