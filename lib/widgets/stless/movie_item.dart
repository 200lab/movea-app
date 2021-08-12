import 'package:flutter/material.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/widgets/stless/stars_bar.dart';

class MovieItem extends StatelessWidget {
  final String movieTitle;
  final String posterUrl;
  final VoidCallback onTap;
  const MovieItem({Key? key, required this.movieTitle, required this.posterUrl,required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            width: width,
            padding: EdgeInsets.only(bottom: 20, left: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                image: DecorationImage(
                    image: AssetImage(posterUrl), fit: BoxFit.cover)),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  GradientPalette.black1,
                  GradientPalette.black2,
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: width,
                  padding: const EdgeInsets.only(bottom: 8, left: 8),
                  child: Text(movieTitle, style: TxtStyle.heading2),
                ),
                StarsBar()
              ],
            ),
          )
        ],
      ),
    );
  }
}
