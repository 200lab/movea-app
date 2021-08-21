import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movea_app/config/routes/routes.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/constants/assets_path.dart';
import 'package:movea_app/widgets/stless/circle_avatar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Container(
              width: size.width,
              alignment: Alignment.centerLeft,
              child: IconButton(
                icon: FaIcon(
                  FontAwesomeIcons.arrowLeft,
                  color: DarkTheme.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            CustomCircleAvatar(
              height: 120,
              width: 120,
              onTap: () {},
            ),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 8),
              child: Text(
                'Quang Nguyễn',
                style: TxtStyle.heading3,
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 30),
              child: Text(
                'example@example.com',
                style: TxtStyle.heading4Light,
              ),
            ),
            ProfileItem(
              size: size,
              content: 'Edit Profile',
              icon: Image.asset(
                AssetPath.iconProfilex2,
                scale: 1.5,
              ),
              onTap: () {
                Navigator.pushNamed(context, Routes.editProfilePage);
              },
            ),
            ProfileItem(
              size: size,
              content: 'My Wallet',
              icon: Image.asset(
                AssetPath.iconWalletx2,
                scale: 1.5,
              ),
              onTap: () {},
            ),
            ProfileItem(
              size: size,
              content: 'Change Language',
              icon: Image.asset(
                AssetPath.iconLanguagex2,
                scale: 1.5,
              ),
              onTap: () {},
            ),
            ProfileItem(
              size: size,
              content: 'Help Center',
              icon: Image.asset(
                AssetPath.iconHelpx2,
                scale: 1.5,
              ),
              onTap: () {},
            ),
            ProfileItem(
              size: size,
              content: 'Rate Flutix App',
              icon: Image.asset(
                AssetPath.iconRatex2,
                scale: 1.5,
              ),
              onTap: (){},
            ),
            Expanded(child: Container())
          ],
        ),
      )),
    );
  }
}

class ProfileItem extends StatelessWidget {
  const ProfileItem(
      {Key? key,
      required this.size,
      required this.content,
      required this.icon,
      required this.onTap})
      : super(key: key);

  final Size size;
  final String content;
  final Widget icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        height: size.width / 8,
        margin: EdgeInsets.only(bottom: 8),
        // decoration: BoxDecoration(
        //     // color: Colors.green,
        //     border: Border(bottom: BorderSide(color: DarkTheme.white))),
        child: Row(
          children: [
            icon,
            Container(
                margin: EdgeInsets.only(left: 10),
                child: Text(content, style: TxtStyle.heading4)),
          ],
        ),
      ),
    );
  }
}
