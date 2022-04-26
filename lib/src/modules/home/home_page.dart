import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movea_app/src/config/app_color.dart';
import 'package:movea_app/src/config/text_style.dart';

import '../../models/movie.dart';
import 'components/category_bar.dart';
import 'components/coming_soon.dart';
import 'components/header.dart';
import 'components/promo.dart';
import 'components/search_bar.dart';
import 'components/slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //header
            HomeHeader(size: size),
            //search bar
            SearchBar(size: size),
            //category bar
            CategoryBar(size: size),
            //title
            buildTitle('Now Playing'),
            //slider
            SliderBar(size: size),
            buildTitle('Coming Soon'),
            const ComingSoon(),
            buildTitle('Promo'),
            Promo(size: size),
            Promo(size: size),
            Promo(size: size),
          ],
        ),
      ),
    );
  }

  Padding buildTitle(String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      child: Text(
        content,
        style: TxtStyle.heading2,
      ),
    );
  }
}
