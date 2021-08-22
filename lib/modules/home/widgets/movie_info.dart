import 'package:flutter/material.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/constants/assets_path.dart';
import 'package:movea_app/widgets/stless/stars_bar.dart';

class MovieInfo extends StatelessWidget {
  const MovieInfo({
    Key? key
  }) : super(key: key);
  // final Size size;
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


class MovieInfoBox extends StatelessWidget {
  const MovieInfoBox({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: width / 2.5,
          child: Image.asset(
            AssetPath.posterRalphx2,
            fit: BoxFit.cover,
          ),
        ),
        Expanded(
          child: Container(
            height: 220,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 8),
                  width: width,
                  child: Text(
                    'Ralph Break the Internet',
                    style: TxtStyle.heading3Medium,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 5),
                    child: StarsBar()),
                Container(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      'Action & adventure, Comedy',
                      style: TxtStyle.heading4Light,
                    )),
                SizedBox(
                  height: 8,
                ),
                Container(
                  padding: EdgeInsets.only(left: 8),
                  width: width,
                  child: Text(
                    '1h 41min',
                    style: TxtStyle.heading4Light,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

