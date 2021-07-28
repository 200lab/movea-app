import 'package:flutter/material.dart';
import 'package:movea_app/values/app_color.dart';
import 'package:movea_app/widgets/top_bar.dart';

class CheckOutMoviePage extends StatelessWidget {
  const CheckOutMoviePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.darkerBackground,
      body: SafeArea(
        child: Column(
          children: [
            TopBarCard(
              content: 'Checkout\nMovie',
            )
          ],
        ),
      ),
    );
  }
}
