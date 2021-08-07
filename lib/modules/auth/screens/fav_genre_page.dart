import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movea_app/config/routes/routes.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/widgets/stless/classic_button.dart';

class FavoriteGenrePage extends StatefulWidget {
  const FavoriteGenrePage({Key? key}) : super(key: key);

  @override
  _FavoriteGenrePageState createState() => _FavoriteGenrePageState();
}

class _FavoriteGenrePageState extends State<FavoriteGenrePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
      padding: EdgeInsets.all(15),
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
            ReusableRow(contentLeft: 'Honor', contentRight: 'Action'),
            ReusableRow(contentLeft: 'Drama', contentRight: 'War'),
            ReusableRow(contentLeft: 'Comedy', contentRight: 'Crime'),
            Container(
              padding: EdgeInsets.only(bottom: 10),
              alignment: Alignment.centerLeft,
              child: Text(
                'Select Your\nFavorite language',
                style: TxtStyle.heading2,
              ),
            ),
            ReusableRow(contentLeft: 'Bahasa', contentRight: 'English'),
            ReusableRow(contentLeft: 'Japanese', contentRight: 'Korean'),
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
}

class ReusableRow extends StatelessWidget {
  final contentRight;
  final contentLeft;

  const ReusableRow({Key? key, this.contentRight, this.contentLeft})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClassicButton(
            width: MediaQuery.of(context).size.width * 0.45,
            height: MediaQuery.of(context).size.height / 10,
            color: DarkTheme.darkBackground,
            onTap: () {},
            child: Text(
              contentLeft,
              style: TxtStyle.heading3Medium,
            ),
          ),
          ClassicButton(
            width: MediaQuery.of(context).size.width * 0.44,
            height: MediaQuery.of(context).size.height / 10,
            color: DarkTheme.darkBackground,
            onTap: () {},
            child: Text(
              contentRight,
              style: TxtStyle.heading3Medium,
            ),
          ),
        ],
      ),
    );
  }
}
