import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';

class MovieItem extends StatelessWidget {
  final String movieTitle;
  final String posterUrl;
  const MovieItem({Key? key,required this.movieTitle,required this.posterUrl}) : super(key: key);
  
  

  @override
  Widget build(BuildContext context) {

    final width = MediaQuery.of(context).size.width;
    return Stack(
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
              Container(
                padding: const EdgeInsets.only(left: 8, bottom: 20),
                child: Row(
                  children: [
                    star(),
                    star(),
                    star(),
                    star(),
                    star(),
                    Text('(5.0)',style: TxtStyle.heading4Light,)
                  ],
                ),
              )
            ],
          ),
        )
      ],
    );  
  }
  Padding star() {
    return Padding(
      padding: const EdgeInsets.only(right: 4),
      child: FaIcon(
        FontAwesomeIcons.solidStar,
        size: 15,
        color: DarkTheme.yellow,
      ),
    );
  }
}
