import 'package:flutter/material.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/models/movie.dart';

class MyTicketPage extends StatefulWidget {
  const MyTicketPage({Key? key}) : super(key: key);

  @override
  _MyTicketPageState createState() => _MyTicketPageState();
}

class _MyTicketPageState extends State<MyTicketPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              height: height / 13,
              width: width,
              padding: EdgeInsets.only(left: 20),
              child: Text(
                'My Ticket',
                style: TxtStyle.heading2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: height / 20,
                      width: width / 3.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          gradient: LinearGradient(colors: [
                            GradientPalette.blue1,
                            GradientPalette.blue2
                          ])),
                      alignment: Alignment.center,
                      child: Text(
                        'All',
                        style: TxtStyle.heading3,
                      ),
                    ),
                    Container(
                      height: height / 20,
                      width: width / 3.5,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(5),
                      //   gradient: LinearGradient(colors: [
                      //     GradientPalette.blue1,
                      //     GradientPalette.blue2
                      //   ])
                      // ),
                      alignment: Alignment.center,
                      child: Text(
                        'News',
                        style: TxtStyle.heading3,
                      ),
                    ),
                    Container(
                      height: height / 20,
                      width: width / 3.5,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(5),
                      //   gradient: LinearGradient(colors: [
                      //     GradientPalette.blue1,
                      //     GradientPalette.blue2
                      //   ])
                      // ),
                      alignment: Alignment.center,
                      child: Text(
                        'Exprired',
                        style: TxtStyle.heading3,
                      ),
                    ),
                  ]),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              height: 10,
              width: width - 40,
              decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
                  color: DarkTheme.white,
                )),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 20),
                children: movies
                    .map((e) => Builder(builder: (context) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Row(
                              children: [
                                Container(
                                  height: height / 6,
                                  width: width / 4,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(e.posterImg))),
                                ),
                                Container(
                                  width: width / 1.75,
                                  height: height / 6,
                                  margin: EdgeInsets.only(
                                      left: 20, top: 8, bottom: 8),
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
                                        '16:40, Sun May 22',
                                        style: TxtStyle.heading4Light,
                                      ),
                                      Text(
                                        'FX Sudirman XXI',
                                        style: TxtStyle.heading4Light,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        }))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
