import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/constants/assets_path.dart';
import 'package:movea_app/modules/home/models/movie.dart';
import 'package:movea_app/widgets/stful/filter_button.dart';
import 'package:movea_app/widgets/stless/classic_button.dart';
import 'package:movea_app/widgets/stless/top_bar.dart';

class CommonWidgetPage extends StatefulWidget {
  const CommonWidgetPage({Key? key}) : super(key: key);

  @override
  _CommonWidgetPageState createState() => _CommonWidgetPageState();
}

class _CommonWidgetPageState extends State<CommonWidgetPage> {
  late PageController _pageController;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          Text('Stateless',
              style: TxtStyle.heading1, textAlign: TextAlign.center),
          buildSizedBox(),
          TopBarCard(
            content: 'Create New\nYour Account',
          ),
          buildSizedBox(),
          Text(
            'Heading 1',
            style: TxtStyle.heading1,
          ),
          Text(
            'Heading 2',
            style: TxtStyle.heading2,
          ),
          Text(
            'Heading 3',
            style: TxtStyle.heading3,
          ),
          Text(
            'Heading 4',
            style: TxtStyle.heading4,
          ),
          GradientText(
            'Gradient Text\nHeading 4 size',
            gradient: LinearGradient(colors: <Color>[
              GradientPalette.gradientLightBlue1,
              GradientPalette.gradientLightBlue2
            ]),
          ),
          buildSizedBox(),
          ClassicButton(
            height: height / 14,
            width: width * 4 / 5,
            color: DarkTheme.blueMain,
            child: Text(
              'Classic Button',
              style: TxtStyle.heading3,
            ),
            onTap: () {},
          ),
          buildSizedBox(),
          GradientButton(
            gradientColor1: GradientPalette.gradientBlue1,
            gradientColor2: GradientPalette.gradientBlue2,
            height: height / 14,
            child: Text(
              'Gradient Button',
              style: TxtStyle.heading3,
            ),
          ),
          buildSizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SquareGradientButton(
                  onTap: () {},
                  gradientColor1: GradientPalette.gradientBlue1,
                  gradientColor2: GradientPalette.gradientBlue2,
                  edge: height / 14,
                  radidus: 14,
                  child: ImageIcon(AssetImage(AssetPath.iconControl),
                      color: DarkTheme.white)),
              SquareGradientButton(
                  onTap: () {},
                  gradientColor1: GradientPalette.gradientLightBlue1,
                  gradientColor2: GradientPalette.gradientLightBlue2,
                  edge: height / 14,
                  radidus: 100,
                  child: ImageIcon(AssetImage(AssetPath.iconTopUp),
                      color: DarkTheme.white)),
              GestureDetector(
                onTap: () {},
                child: Container(
                  width: width / 10,
                  height: width / 10,
                  decoration: BoxDecoration(
                      color: DarkTheme.blueMain, shape: BoxShape.circle),
                  child: ImageIcon(
                    AssetImage(AssetPath.iconPlay),
                    color: DarkTheme.white,
                  ),
                ),
              )
            ],
          ),
          buildSizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleButton(
                assetPath: AssetPath.iconAdd,
                bgColor: DarkTheme.blueMain,
                onTap: () {},
              ),
              CircleButton(
                assetPath: AssetPath.iconCancel,
                bgColor: DarkTheme.red,
                onTap: () {},
              ),
            ],
          ),
          buildSizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FilterButton(
                height: width / 10,
                width: width / 5,
                content: 'All',
              ),
              FilterButton(
                height: width / 10,
                width: width / 5,
                content: 'All',
              ),
              FilterButton(
                height: width / 10,
                width: width / 5,
                content: 'All',
              ),
              FilterButton(
                height: width / 10,
                width: width / 5,
                content: 'All',
              ),
            ],
          ),
          buildSizedBox(),
          CarouselSlider(
              options: CarouselOptions(autoPlay: true, enlargeCenterPage: true),
              items: movies.map((e) {
                return Builder(builder: (context) {
                  return Container(
                    height: 40,
                    color: DarkTheme.blueMain,
                    child: Image(image: AssetImage(e.backgroundImg),fit: BoxFit.cover,),
                  );
                });
              }).toList()),
        ],
      ),
    );
  }

  SizedBox buildSizedBox() {
    return SizedBox(height: 30);
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 1, viewportFraction: 0.8);
  }
}
