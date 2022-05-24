import 'package:flutter/material.dart';
import 'package:movea_app/src/modules/selectCinema/component/custom_header.dart';

import '../../config/app_color.dart';
import '../../config/text_style.dart';
import '../../constants/asset_path.dart';
import '../../widgets/star.dart';

class CheckOutPage extends StatelessWidget {
  const CheckOutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomHeader(content: 'Checkout\nMovie', size: size),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.symmetric(vertical: 24),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width / 2.5,
                    alignment: Alignment.centerLeft,
                    child: Image.asset(
                      AssetPath.posterRalphx2,
                      scale: 1.2,
                    ),
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 8, bottom: 8),
                        width: size.width,
                        child: const Text(
                          'Ralph Break the Internet',
                          style: TxtStyle.heading3Medium,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 8, bottom: 8),
                        child: Row(
                          children: const [
                            StarComponent(),
                            StarComponent(),
                            StarComponent(),
                            StarComponent(),
                            StarComponent(),
                            Text(
                              '(5.0)',
                              style: TxtStyle.heading4,
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 8, bottom: 8),
                        width: size.width,
                        child: const Text(
                          'Action & adventure, Comedy',
                          style: TxtStyle.heading4Light,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 8, bottom: 8),
                        width: size.width,
                        child: const Text(
                          '1h41min',
                          style: TxtStyle.heading4Light,
                        ),
                      )
                    ],
                  ))
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'ID Order',
                    style: TxtStyle.heading4Light,
                  ),
                  Text(
                    '22081996',
                    style: TxtStyle.heading4,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Cinema',
                    style: TxtStyle.heading4Light,
                  ),
                  Text(
                    'FX Sudirman XXI',
                    style: TxtStyle.heading4,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Date & Time',
                    style: TxtStyle.heading4Light,
                  ),
                  Text(
                    'Sun May 22,  16:40',
                    style: TxtStyle.heading4,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Seat Number',
                    style: TxtStyle.heading4Light,
                  ),
                  Text(
                    'D7,D8,D9',
                    style: TxtStyle.heading4,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Price',
                    style: TxtStyle.heading4Light,
                  ),
                  Text(
                    '50.000 VND x 3',
                    style: TxtStyle.heading4,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Total',
                    style: TxtStyle.heading4Light,
                  ),
                  Text(
                    '150.000 VND',
                    style: TxtStyle.heading4,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Your Wallet',
                    style: TxtStyle.heading4Light,
                  ),
                  Text(
                    '200.000 VND',
                    style:
                        TxtStyle.heading4.copyWith(color: DarkTheme.blueMain),
                  ),
                ],
              ),
            ),
            Expanded(
                child: Center(
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  height: size.height / 16,
                  width: size.width / 2,
                  decoration: BoxDecoration(
                      color: DarkTheme.blueMain,
                      borderRadius: BorderRadius.circular(20)),
                  child: const Text(
                    'Check Out',
                    style: TxtStyle.heading3,
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
