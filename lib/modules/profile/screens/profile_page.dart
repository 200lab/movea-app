import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/constants/assets_path.dart';
import 'package:movea_app/widgets/stless/circle_avatar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            icon: FaIcon(
              FontAwesomeIcons.arrowLeft,
              color: DarkTheme.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          CustomCircleAvatar(
            height: 120,
            width: 120,
            onTap: () {},
          ),
          Text(
            'Quang Nguyễn',
            style: TxtStyle.heading3,
          ),
          Text(
            'example@example.com',
            style: TxtStyle.heading4Light,
          ),
          //TODO: chỗ này anh ơii  ==>     ImageIcon(AssetImage(AssetPath.iconProfilex2)),
          Text('Edit Profile', style: TxtStyle.heading4),
          Text('My Wallet', style: TxtStyle.heading4),
          Text('Change Language', style: TxtStyle.heading4),
          Text('Help Center', style: TxtStyle.heading4),
          Text('Rate Flutix App', style: TxtStyle.heading4),
        ],
      )),
    );
  }
}
