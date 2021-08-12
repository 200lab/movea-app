import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/modules/home/models/movie.dart';
import 'package:movea_app/widgets/stless/circle_avatar.dart';
import 'package:movea_app/widgets/stless/classic_button.dart';
import 'package:movea_app/widgets/stless/gerne_bar.dart';
import 'package:movea_app/widgets/stless/movie_item.dart';
import 'package:movea_app/widgets/stless/session_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      
        body: SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        children: <Widget>[
          Row(
            children: [
              Expanded(
                  child: Text(
                'Find Your Best\nMovie',
                style: TxtStyle.heading1SemiBold,
              )),
              CustomCircleAvatar(
                height: MediaQuery.of(context).size.height / 13,
                width: MediaQuery.of(context).size.height / 13,
              )
            ],
          ),
          daSpace(),
          SessionTitle(content: 'Now Playing'),
          daSpace(),
          GerneBar(
            width: 85,
          ),
          daSpace(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Now Playing',
                style: TxtStyle.heading2,
              ),
              GradientText(
                'View All',
                gradient: LinearGradient(colors: <Color>[
                  GradientPalette.lightBlue1,
                  GradientPalette.lightBlue2
                ]),
              ),
            ],
          ),
          daSpace(),
          CarouselSlider(
              options: CarouselOptions(autoPlay: true, enlargeCenterPage: true),
              items: movies.sublist(0,3).map((e) {
                return Builder(builder: (context) {
                  return MovieItem(
                    movieTitle: e.title,
                    posterUrl: e.backgroundImg,
                    onTap: (){},
                  );
                });
              }).toList()),
          daSpace(),
          SessionTitle(content: 'Coming Soon'),
          daSpace(),
          Row(
            children: movies.sublist(0,3).map((e) {
              return Builder(builder: (context) {
                return Container(
                  padding: EdgeInsets.only(left: 10),
                  width: width / 3 - 10,
                  child: Image(
                    image: AssetImage(e.posterImg),
                    fit: BoxFit.cover,
                  ),
                );
              });
            }).toList(),
          ),
          daSpace(),
          SessionTitle(content: 'Promo'),
          daSpace(),
        ],
      ),
    ));
  }

  Expanded searchFiled(BuildContext context) {
    return Expanded(
      child: ClassicButton(
        height: MediaQuery.of(context).size.height / 14,
        color: DarkTheme.darkBackground,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 20),
              child: FaIcon(
                FontAwesomeIcons.search,
                color: DarkTheme.white,
              ),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search Movie',
                    hintStyle: TxtStyle.heading3Light,
                    border: InputBorder.none),
              ),
            ),
          ],
        ),
        onTap: () {},
      ),
    );
  }

  SizedBox daSpace() {
    return SizedBox(
      height: 20,
    );
  }
}
