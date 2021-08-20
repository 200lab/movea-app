import 'package:flutter/material.dart';
import 'package:movea_app/config/routes/routes.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/modules/home/screens/success_checkout_page.dart';
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
            MovieInfo(width: size.width),
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
