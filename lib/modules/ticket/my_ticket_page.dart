import 'package:flutter/material.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/models/movie.dart';
import 'package:movea_app/widgets/stless/movie_card.dart';

class MyTicketPage extends StatefulWidget {
  const MyTicketPage({Key? key}) : super(key: key);

  @override
  _MyTicketPageState createState() => _MyTicketPageState();
}

class _MyTicketPageState extends State<MyTicketPage> {
  final bool hasStar = false;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                height: size.height / 13,
                width: size.width,
                child: Text(
                  'My Ticket',
                  style: TxtStyle.heading2,
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: size.height / 20,
                        width: size.width / 3.5,
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
                        height: size.height / 20,
                        width: size.width / 3.5,
                        alignment: Alignment.center,
                        child: Text(
                          'News',
                          style: TxtStyle.heading3,
                        ),
                      ),
                      Container(
                        height: size.height / 20,
                        width: size.width / 3.5,
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
                width: size.width - 40,
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
                            return MovieCard(
                                context: context,
                                hasStar: hasStar,
                                height: size.height,
                                width: size.width,
                                e: e);
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
