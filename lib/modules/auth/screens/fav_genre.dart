import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movea_app/config/themes/dark_theme.dart';
import 'package:movea_app/constants/app_constants.dart';
import 'package:movea_app/modules/auth/screens/confirm_new.dart';
import 'package:movea_app/widgets/custom_button.dart';

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
                  child: FaIcon(
                    FontAwesomeIcons.arrowLeft,
                    color: kColorWhite,
                  ),
                )),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Select Your\nFavorite Genre',
                style: kTextTittleStyle,
              ),
            ),
            ReusableRow(contentLeft: 'Honor', contentRight: 'Action'),
            ReusableRow(contentLeft: 'Drama', contentRight: 'War'),
            ReusableRow(contentLeft: 'Comedy', contentRight: 'Crime'),
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Select Your\nFavorite language',
                style: kTextTittleStyle,
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
                  color: kColorDarkBackground,
                  borderRadius: BorderRadius.circular(100)),
              child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => ConfirmNewPage()));
                  },
                  child: FaIcon(
                    FontAwesomeIcons.arrowRight,
                    color: kColorWhite,
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
          CustomButton(
            width: MediaQuery.of(context).size.width * 0.45,
            height: MediaQuery.of(context).size.height / 10,
            clr: kColorDarkBackground,
            radius: 20.0,
            fnc: () {},
            child: Text(
              contentLeft,
              style: kTextButtonStyle,
            ),
          ),
          CustomButton(
            width: MediaQuery.of(context).size.width * 0.44,
            height: MediaQuery.of(context).size.height / 10,
            clr: kColorDarkBackground,
            radius: 20.0,
            fnc: () {},
            child: Text(
              contentRight,
              style: kTextButtonStyle,
            ),
          ),
        ],
      ),
    );
  }
}
