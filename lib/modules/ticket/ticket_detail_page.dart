import 'package:flutter/material.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/models/movie.dart';
import 'package:movea_app/widgets/stless/movie_card.dart';
import 'package:movea_app/widgets/stless/top_bar.dart';

class TicketDetailPage extends StatelessWidget {
  const TicketDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final bool hasStar = true;
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          TopBarCard(content: 'Ticket Detail'),
          MovieCard(
              context: context,
              hasStar: hasStar,
              height: height,
              width: width,
              e: movies[0]),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Cinema',
                style: TxtStyle.heading3Light,
              ),
              Text(
                'FX Sudirman XXI',
                style: TxtStyle.heading3,
              )
            ],
          ),
          Text('---------------------------------------------------'),
          Container(
            decoration: BoxDecoration(),
          )
        ],
      ),
    ));
  }
}
