import 'package:flutter/material.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/constants/assets_path.dart';

class MovieInfoPage extends StatelessWidget {
  const MovieInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Stack(
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
          Container(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              children: <Widget> [
                SizedBox(height: height/4.5),
                Row(children: [
                  Container(
                    width: width/2.5,
                    child: Image.asset(AssetPath.posterRalphx2,fit: BoxFit.cover,),
                  )
                ],)
              ],
            ),
          )
        ],
      ),
    );
  }
}
