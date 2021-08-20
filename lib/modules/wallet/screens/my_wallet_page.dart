import 'package:flutter/material.dart';
import 'package:movea_app/config/routes/routes.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/models/movie.dart';

class MyWalletPage extends StatefulWidget {
  const MyWalletPage({Key? key}) : super(key: key);

  @override
  _MyWalletPageState createState() => _MyWalletPageState();
}

class _MyWalletPageState extends State<MyWalletPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: size.height / 13,
                width: size.width,
                child: Text(
                  'My Wallet',
                  style: TxtStyle.heading2,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                height: 200,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                      colors: [GradientPalette.blue1, GradientPalette.blue2]),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 20, left: 20),
                      child: Text(
                        'IDR 50.000',
                        style: TxtStyle.heading1,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: size.width,
                padding: EdgeInsets.symmetric(horizontal: 20),
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Recent Transactions',
                  style: TxtStyle.heading2,
                ),
              ),
              Container(
                width: size.width,
                child: Column(
                  children: movies.reversed
                      .map((e) => Builder(builder: (context) {
                            return InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, Routes.topUpPage);
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      height: size.height / 6,
                                      width: size.width / 4,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(e.posterImg),
                                              fit: BoxFit.cover)),
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(left: 20),
                                        padding:
                                            EdgeInsets.symmetric(vertical: 20),
                                        height: size.height / 6,
                                        width: size.width / 1.75,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              e.title,
                                              style: TxtStyle.heading3Medium,
                                            ),
                                            Text(
                                              'IDR 150.000',
                                              style: TextStyle(
                                                  color:
                                                      e.title == 'Top Up Movie'
                                                          ? DarkTheme.red
                                                          : DarkTheme.green),
                                            ),
                                            Text(
                                              '16:40, Sun May 22',
                                              style: TxtStyle.heading4Light,
                                            )
                                          ],
                                        ))
                                  ],
                                ),
                              ),
                            );
                          }))
                      .toList(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
