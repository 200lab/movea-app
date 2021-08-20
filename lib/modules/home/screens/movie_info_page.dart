import 'package:flutter/material.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/constants/app_constants.dart';
import 'package:movea_app/modules/home/widgets/app_bar_movie.dart';
import 'package:movea_app/widgets/stless/caster_bar.dart';
import 'package:movea_app/modules/home/widgets/session_single_title.dart';
import 'package:movea_app/widgets/stless/trailer_bar.dart';

class MovieInfoPage extends StatelessWidget {
  const MovieInfoPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return CustomScrollView(
      slivers: [
        SliverPersistentHeader(
            delegate: AppBarMovie(
                maxExtended: AppConstant.appBarHeight,
                minExtended: size.height * 0.35,
                size: MediaQuery.of(context).size)),
        SliverToBoxAdapter(
          // child: Container(
          //   width: size.width,
          //   height: size.height,
          //   color: DarkTheme.darkerBackground,
          // ),
          child: Padding(
            padding: const EdgeInsets.only(left :20),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Text(
                      'About Movie',
                      style: TxtStyle.heading3Medium,
                      textAlign: TextAlign.center,
                    )),
                    Expanded(
                      child: Text(
                        'Review',
                        style: TxtStyle.heading3Light,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                SessionSingleTitle(width: size.width, content: 'Synopsis'),
                Container(
                  padding: EdgeInsets.only(right: 20),
                  child: Text(
                    AppConstant.exampleContent,
                    style: TxtStyle.heading4Light,
                  ),
                ),
                SessionSingleTitle(width: size.width, content: 'Cast & Crew'),
                CatersBar(
                  width: size.width,
                ),
                SessionSingleTitle(
                    width: size.width, content: 'Trailer and song'),
                TrailerBar(width: size.width),
                SizedBox(height: 200)
              ],
            ),
          ),
        )
      ],
    );
  }
}

// 