import 'package:flutter/material.dart';
import 'package:movea_app/config/routes/routes.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/models/movie.dart';
import 'package:movea_app/widgets/stless/stars_bar.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({
    Key? key,
    required this.context,
    required this.hasStar,
    required this.height,
    required this.width,
    required this.e,
  }) : super(key: key);

  final BuildContext context;
  final bool hasStar;
  final double height;
  final double width;
  final Movie e;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, Routes.ticketDetailPage);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: Row(
          children: [
            Container(
              height: height / 6,
              width: width / 4,
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(e.posterImg))),
            ),
            Container(
              width: width / 1.75,
              height: height / 6,
              margin: EdgeInsets.only(left: 20, top: 8, bottom: 8),
              color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    e.title,
                    style: TxtStyle.heading3Medium,
                  ),
                  hasStar == true ? StarsBar() : Container(),
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
      ),
    );
  }
}
