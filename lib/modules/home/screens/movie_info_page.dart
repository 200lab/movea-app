// import 'package:flutter/material.dart';
// import 'package:movea_app/config/themes/text_style.dart';
// import 'package:movea_app/constants/app_constants.dart';
// import 'package:movea_app/modules/home/widgets/app_bar_movie.dart';
// import 'package:movea_app/widgets/stless/caster_bar.dart';
// import 'package:movea_app/modules/home/widgets/session_single_title.dart';
// import 'package:movea_app/widgets/stless/trailer_bar.dart';
//
// class MovieInfoPage extends StatelessWidget {
//   const MovieInfoPage({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//
//     return CustomScrollView(
//       slivers: [
//         SliverPersistentHeader(
//             delegate: AppBarMovie(
//                 maxExtended: AppConstant.appBarHeight,
//                 minExtended: size.height * 0.35,
//                 size: MediaQuery.of(context).size)),
//         SliverToBoxAdapter(
//           // child: Container(
//           //   width: size.width,
//           //   height: size.height,
//           //   color: DarkTheme.darkerBackground,
//           // ),
//           child: Padding(
//             padding: const EdgeInsets.only(left :20),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     Expanded(
//                         child: Text(
//                       'About Movie',
//                       style: TxtStyle.heading3Medium,
//                       textAlign: TextAlign.center,
//                     )),
//                     Expanded(
//                       child: Text(
//                         'Review',
//                         style: TxtStyle.heading3Light,
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ],
//                 ),
//                 SessionSingleTitle(width: size.width, content: 'Synopsis'),
//                 Container(
//                   padding: EdgeInsets.only(right: 20),
//                   child: Text(
//                     AppConstant.exampleContent,
//                     style: TxtStyle.heading4Light,
//                   ),
//                 ),
//                 SessionSingleTitle(width: size.width, content: 'Cast & Crew'),
//                 CatersBar(
//                   width: size.width,
//                 ),
//                 SessionSingleTitle(
//                     width: size.width, content: 'Trailer and song'),
//                 TrailerBar(width: size.width),
//                 SizedBox(height: 200)
//               ],
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }
//
// //

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/constants/app_constants.dart';
import 'package:movea_app/constants/assets_path.dart';
import 'package:movea_app/widgets/stless/caster_bar.dart';
import 'package:movea_app/widgets/stless/stars_bar.dart';
import 'package:movea_app/widgets/stless/trailer_bar.dart';

class MovieInfoPage extends StatelessWidget {
  const MovieInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                height: height / 3.5,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(AssetPath.teaserRalph),
                        fit: BoxFit.cover),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          GradientPalette.black1,
                          GradientPalette.black2,
                        ])),
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      GradientPalette.black2,
                      GradientPalette.black1,
                    ])),
              )
            ],
          ),
          Container(
            height: height / 3.5,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                  GradientPalette.black1,
                  GradientPalette.black2,
                ])),
          ),

          ElevatedButton(
            onPressed: () {},
            child: FaIcon(FontAwesomeIcons.arrowLeft),
          ),
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              children: <Widget>[
                SizedBox(height: height / 4.5),
                MovieInfo(width: width),
                SizedBox(
                  height: 30,
                ),
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
                    )),
                  ],
                ),
                SessionSingleTitle(width: width, content: 'Synopsis'),
                Container(
                  child: Text(
                    AppConstant.exampleContent,
                    style: TxtStyle.heading4Light,
                  ),
                ),
                SessionSingleTitle(width: width, content: 'Cast & Crew'),
                CatersBar(
                  width: width,
                ),
                SessionSingleTitle(width: width, content: 'Trailer and song'),
                TrailerBar(width: width),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MovieInfo extends StatelessWidget {
  const MovieInfo({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: width / 2.5,
          child: Image.asset(
            AssetPath.posterRalphx2,
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
          child: Container(
            height: 220,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 8),
                  width: width,
                  child: Text(
                    'Ralph Break the Internet',
                    style: TxtStyle.heading3Medium,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 5),
                    child: StarsBar()),
                Container(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      'Action & adventure, Comedy',
                      style: TxtStyle.heading4Light,
                    )),
                SizedBox(
                  height: 8,
                ),
                Container(
                  padding: EdgeInsets.only(left: 8),
                  width: width,
                  child: Text(
                    '1h 41min',
                    style: TxtStyle.heading4Light,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class SessionSingleTitle extends StatelessWidget {
  const SessionSingleTitle(
      {Key? key, required this.width, required this.content})
      : super(key: key);

  final double width;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.only(left: 10, bottom: 30, top: 30),
      child: Text(
        content,
        style: TxtStyle.heading2,
      ),
    );
  }
}
