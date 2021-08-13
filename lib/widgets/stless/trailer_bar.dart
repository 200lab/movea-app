import 'package:flutter/material.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/constants/assets_path.dart';
import 'package:movea_app/models/movie.dart';

class TrailerBar extends StatelessWidget {
  const TrailerBar({Key? key, required this.width}) : super(key: key);
  final double width;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: movies[0].trailers.map((e) {
        return Builder(builder: (context) {
          return Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 160,
                  width: 260,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(e), fit: BoxFit.cover),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Container(
                  height: 160,
                  width: 260,
                  color: Colors.black12,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(left: width / 3, top: width / 6.4),
                  width: width / 10,
                  height: width / 10,
                  decoration: BoxDecoration(
                      color: DarkTheme.blueMain, shape: BoxShape.circle),
                  child: ImageIcon(
                    AssetImage(AssetPath.iconPlay),
                    color: DarkTheme.white,
                  ),
                ),
              )
            ],
          );
        });
      }).toList()),
    );
  }
}
