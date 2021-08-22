import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:movea_app/config/routes/routes.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/constants/assets_path.dart';
import 'package:movea_app/models/movie.dart';
import 'package:movea_app/widgets/stful/filter_button.dart';
import 'package:movea_app/widgets/stless/circle_avatar.dart';
import 'package:movea_app/widgets/stless/classic_button.dart';
import 'package:movea_app/widgets/stless/movie_item.dart';
import 'package:movea_app/widgets/stless/session_title.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  // int _selectedIndex = 0;

  @override
  void initState() {
    _tabController = new TabController(length: genres.length, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: 20),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  'Find Your Best\nMovie',
                  style: TxtStyle.heading1SemiBold,
                )),
                CustomCircleAvatar(
                  height: size.height / 13,
                  width:  size.height / 13,
                  onTap: (){
                    Navigator.pushNamed(context, Routes.profilePage);
                  }
                )
              ],
            ),
          ),
          daSpace(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                searchFiled(context),
                SizedBox(width: 10),
                SquareGradientButton(
                    onTap: () {},
                    gradientColor1: GradientPalette.blue1,
                    gradientColor2: GradientPalette.blue2,
                    edge: size.height / 14,
                    radidus: 20,
                    child: ImageIcon(AssetImage(AssetPath.iconControl),
                        color: DarkTheme.white)),
              ],
            ),
          ),
          daSpace(),
          GenreBox(size: size, tabController: _tabController),
          daSpace(),
          SessionTitle(content: 'Coming Soon'),
          daSpace(),
          Container(
            width: size.width,
            child: Row(
              children: movies.sublist(0, 3).map((e) {
                return Builder(builder: (context) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Routes.movieInfPage);
                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 15),
                      height: 150,
                      child: Image(
                        image: AssetImage(e.posterImg),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                });
              }).toList(),
            ),
          ),
          daSpace(),
          SessionTitle(content: 'Promo'),
          daSpace(),
          Container(
            height: 80,
            width: size.width,
            padding: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                  colors: [GradientPalette.blue1, GradientPalette.blue2]),
            ),
            child: Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Text(
                      'Student Holiday',
                      style: TxtStyle.heading3Medium,
                    )),
                Expanded(
                    child: Text(
                  'OFF 50%',
                  style: TxtStyle.heading4,
                ))
              ],
            ),
          )
        ],
      ),
    ));
  }

  Expanded searchFiled(BuildContext context) {
    return Expanded(
      child: ClassicButton(
        height: MediaQuery.of(context).size.height / 14,
        color: DarkTheme.darkBackground,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10, left: 20),
              child: FaIcon(
                FontAwesomeIcons.search,
                color: DarkTheme.white,
              ),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Search Movie',
                    hintStyle: TxtStyle.heading3Light,
                    border: InputBorder.none),
              ),
            ),
          ],
        ),
        onTap: () {},
      ),
    );
  }

  SizedBox daSpace() {
    return SizedBox(
      height: 20,
    );
  }
}

class GenreBox extends StatelessWidget {
  const GenreBox({
    Key? key,
    required this.size,
    required TabController tabController,
  })  : _tabController = tabController,
        super(key: key);

  final Size size;
  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 15),
            width: size.width,
            child: TabBar(
              unselectedLabelStyle: TxtStyle.heading4,
              isScrollable: true,
              tabs: genres
                  .map((e) => Builder(builder: (context) {
                        return Tab(
                          child: FilterButton(
                              onTap: () {
                                // _tabController.animateTo(index);
                              },
                              height: 40,
                              width: size.width / 3.5,
                              content: e),
                        );
                      }))
                  .toList(),
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
          ),
          Expanded(
            // child: Container(),
            child: TabBarView(
              children: [
                // Container(child: Center(child: Text('1'))),
                CarouselSlider(
                    options: CarouselOptions(
                        autoPlay: true, enlargeCenterPage: true),
                    items: movies.sublist(0, 3).map((e) {
                      return Builder(builder: (context) {
                        return MovieItem(
                          movieTitle: e.title,
                          posterUrl: e.backgroundImg,
                          onTap: () {
                            Navigator.pushNamed(
                                context, Routes.selectCinemaPage);
                          },
                        );
                      });
                    }).toList()),
                Container(child: Center(child: Text('2'))),
                Container(child: Center(child: Text('3'))),
                Container(child: Center(child: Text('4'))),
                Container(child: Center(child: Text('5'))),
                Container(child: Center(child: Text('6'))),
              ],
              controller: _tabController,
            ),
          ),
        ],
      ),
    );
  }
}
