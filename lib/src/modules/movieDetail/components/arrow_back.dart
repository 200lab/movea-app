import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../config/app_color.dart';

class ArrowBack extends StatelessWidget {
  const ArrowBack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const FaIcon(
          FontAwesomeIcons.arrowLeft,
          color: DarkTheme.white,
        ),
      ),
    );
  }
}
