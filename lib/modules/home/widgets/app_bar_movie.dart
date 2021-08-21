import 'package:flutter/material.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/constants/assets_path.dart';

class AppBarMovie extends SliverPersistentHeaderDelegate {
  final double maxExtended;
  final double minExtended;
  final Size size;

  const AppBarMovie(
      {required this.maxExtended,
      required this.minExtended,
      required this.size});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: size.height / 3.5,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AssetPath.teaserRalph), fit: BoxFit.cover),
            ),
          ),
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
        Container(
          margin: EdgeInsets.only(top: size.height / 3.5),
          height: 200,
          color: DarkTheme.darkerBackground,
        ),
        Container(
          margin: EdgeInsets.only(top: size.height / 3.5),
          height: 200,
          // color: Colors.red,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  GradientPalette.black2,
                  GradientPalette.black1,
                ]),
          ),
        ),
        Positioned(
          top: size.height / 5,
          left: 20,
          child: Transform(
            transform: Matrix4.identity(),
            child: Container(
              width: size.width,
              color: Colors.green,
              child: Row(
                children: [
                  Container(
                    height: 220,
                    color: Colors.red,
                    child: Image.asset(
                      AssetPath.posterRalphx2,
                      fit: BoxFit.cover,
                    ),
                  ),
                  //         Expanded(
                  //   child: Container(
                  //     height: 220,
                  //     child: Column(
                  //       mainAxisAlignment: MainAxisAlignment.end,
                  //       children: [
                  //         Container(
                  //           padding: EdgeInsets.only(left: 8),
                  //           width: size.width,
                  //           child: Text(
                  //             'Ralph Break the Internet',
                  //             style: TxtStyle.heading3Medium,
                  //           ),
                  //         ),
                  //         SizedBox(
                  //           height: 10,
                  //         ),
                  //         Padding(
                  //           padding: EdgeInsets.only(left: 10,bottom: 5),
                  //           child: StarsBar()),
                  //         Container(
                  //             padding: EdgeInsets.only(left: 8),
                  //             child: Text(
                  //               'Action & adventure, Comedy',
                  //               style: TxtStyle.heading4Light,
                  //             )),
                  //         SizedBox(
                  //           height: 8,
                  //         ),
                  //         Container(
                  //           padding: EdgeInsets.only(left: 8),
                  //           width: size.width,
                  //           child: Text(
                  //             '1h 41min',
                  //             style: TxtStyle.heading4Light,
                  //           ),
                  //         )
                  //       ],
                  //     ),
                  //   ),
                  // )
                ],
              ),
              // child: MovieInfo(width: size.width),
            ),
          ),
        )
      ],
    );
  }

  @override
  double get maxExtent => maxExtended;

  @override
  double get minExtent => minExtended;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      false;
}

// SliverAppBar(
//           leading: IconButton(
//             icon: ImageIcon(AssetImage(AssetPath.iconBack)),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//           floating: false,
//           pinned: true,
//           snap: false,
//           expandedHeight: 388,
//           flexibleSpace: FlexibleSpaceBar(
//             background: Stack(
//               children: [
// Column(
//   children: [
    // Container(
    //   height: size.height / 3.5,
    //   decoration: BoxDecoration(
    //       image: DecorationImage(
    //           image: AssetImage(AssetPath.teaserRalph),
    //           fit: BoxFit.cover),
    //       gradient: LinearGradient(
    //           begin: Alignment.topCenter,
    //           end: Alignment.bottomCenter,
    //           colors: [
    //             GradientPalette.black1,
    //             GradientPalette.black2,
    //           ])),
    // ),
    // Container(
    //   height: 200,
    //   decoration: BoxDecoration(
    //       gradient: LinearGradient(
    //           begin: Alignment.topCenter,
    //           end: Alignment.bottomCenter,
    //           colors: [
    //         GradientPalette.black2,
    //         GradientPalette.black1,
    //       ])),
    // )
//   ],
// ),
                // Container(
                //   height: size.height / 3.5,
                //   decoration: BoxDecoration(
                //       gradient: LinearGradient(
                //           begin: Alignment.topCenter,
                //           end: Alignment.bottomCenter,
                //           colors: [
                //         GradientPalette.black1,
                //         GradientPalette.black2,
                //       ])),
                // ),
                // Container(
                //   padding: EdgeInsets.only(left: 20),
                //   child: Column(
                //     children: <Widget>[
                //       SizedBox(height: size.height / 4.5),
                //       MovieInfo(width: size.width),
                //       SizedBox(
                //         height: 30,
                //       ),
                //     ],
                //   ),
                // )
//               ],
//             ),
//           ),
//         ),
