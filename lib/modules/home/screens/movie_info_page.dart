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

import 'package:movea_app/constants/assets_path.dart';
import 'package:movea_app/modules/home/widgets/movie_info.dart';
import 'package:movea_app/modules/home/widgets/movie_info_tab.dart';

class MovieInfoPage extends StatefulWidget {
  const MovieInfoPage({Key? key}) : super(key: key);

  @override
  _MovieInfoPageState createState() => _MovieInfoPageState();
}

class _MovieInfoPageState extends State<MovieInfoPage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            //Background
            Column(
              children: [
                Container(
                  height: size.height / 3.5,
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
              height: size.height / 3.5,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    GradientPalette.black1,
                    GradientPalette.black2,
                  ])),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: FaIcon(
                    FontAwesomeIcons.arrowLeft,
                    color: DarkTheme.white,
                  )),
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                children: <Widget>[
                  SizedBox(height: size.height / 4.5),
                  MovieInfoBox(width: size.width),
                  MovieInfoTab(size: size, tabController: _tabController)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

