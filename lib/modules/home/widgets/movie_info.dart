import 'package:flutter/material.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/constants/assets_path.dart';
import 'package:movea_app/widgets/stless/stars_bar.dart';

class MovieInfo extends StatelessWidget {
  const MovieInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(left: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text(
                'Ralph Break the Internet',
                style: TxtStyle.heading3Medium,
              ),
            ),
            Padding(padding: EdgeInsets.only(bottom: 5), child: StarsBar()),
            Container(
                child: Text(
              'Action & adventure, Comedy',
              style: TxtStyle.heading4Light,
            )),
            SizedBox(
              height: 8,
            ),
            Container(
              child: Text(
                '1h 41min',
                style: TxtStyle.heading4Light,
              ),
            )
          ],
        ),
      ),
    );
  }
}
