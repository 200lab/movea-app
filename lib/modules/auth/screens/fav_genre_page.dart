import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movea_app/config/routes/routes.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/widgets/stful/toggle_button.dart';

class FavoriteGenrePage extends StatefulWidget {
  const FavoriteGenrePage({Key? key}) : super(key: key);

  @override
  _FavoriteGenrePageState createState() => _FavoriteGenrePageState();
}

class _FavoriteGenrePageState extends State<FavoriteGenrePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
        body: SafeArea(
            child: ListView(
      padding: EdgeInsets.symmetric(horizontal: 20),
      children: [
        Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height / 14,
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: FaIcon(
                    FontAwesomeIcons.arrowLeft,
                    color: DarkTheme.white,
                  ),
                )),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              alignment: Alignment.centerLeft,
              child: Text(
                'Select Your\nFavorite Genre',
                style: TxtStyle.heading2,
              ),
            ),
            buildGenreRow(size.height, 'Honor', 'Action'),
            SizedBox(height: 20),
            buildGenreRow(size.height, 'Drama', 'War'),
            SizedBox(height: 20),
            buildGenreRow(size.height, 'Comedy', 'Crime'),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              alignment: Alignment.centerLeft,
              child: Text(
                'Select Your\nFavorite language',
                style: TxtStyle.heading2,
              ),
            ),
            buildGenreRow(size.height, 'Vietnamese', 'English'),
            SizedBox(height: 20),
            buildGenreRow(size.height, 'Japanese', 'Korean'),
            SizedBox(height: 20),
            // ReusableRow(contentLeft: 'Bahasa', contentRight: 'English'),
            // ReusableRow(contentLeft: 'Japanese', contentRight: 'Korean'),
            SizedBox(height: 30),
            Container(
              alignment: Alignment.center,
              height: MediaQuery.of(context).size.height / 13,
              width: MediaQuery.of(context).size.height / 13,
              decoration: BoxDecoration(
                  color: DarkTheme.darkBackground,
                  borderRadius: BorderRadius.circular(100)),
              child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.confirmNewPage);
                  },
                  child: FaIcon(
                    FontAwesomeIcons.arrowRight,
                    color: DarkTheme.white,
                  )),
            )
          ],
        )
      ],
    )));
  }

  Container buildGenreRow(double height, String genreLeft, String genreRight) {
    return Container(
      height: height / 12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ToggleButton(
            child: Center(
              child: Text(
                genreLeft,
                style: TxtStyle.heading3,
              ),
            ),
          ),
          SizedBox(width: 20),
          ToggleButton(
            child: Center(
              child: Text(
                genreRight,
                style: TxtStyle.heading3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
