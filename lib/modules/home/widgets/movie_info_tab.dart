import 'package:flutter/material.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/constants/app_constants.dart';
import 'package:movea_app/modules/home/widgets/session_single_title.dart';
import 'package:movea_app/widgets/stless/caster_bar.dart';
import 'package:movea_app/widgets/stless/trailer_bar.dart';

class MovieInfoTab extends StatelessWidget {
  const MovieInfoTab({
    Key? key,
    required this.size,
    required TabController tabController,
  })
      : _tabController = tabController,
        super(key: key);

  final Size size;
  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height-120,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.center,
            width: size.width,
            child: TabBar(
              tabs: [
                Tab(text: 'About Movie'),
                Tab(text: 'Review'),
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelStyle: TxtStyle.heading4,
              indicatorColor: DarkTheme.white,
            ),
          ),
          Expanded(
            child: TabBarView(
              children: [
                Container(child:
                    Column(
                      children: [
                        SessionSingleTitle(width: size.width, content: 'Synopsis'),
                        Container(
                          child: Text(
                            AppConstant.exampleContent,
                            style: TxtStyle.heading4Light,
                          ),
                        ),
                        SessionSingleTitle(width: size.width, content: 'Cast & Crew'),
                        CatersBar(
                          width: size.width,
                        ),
                        SessionSingleTitle(width: size.width, content: 'Trailer and song'),
                        TrailerBar(width: size.width),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    )
                ),
                Container(color: Colors.indigo,),
              ],
              controller: _tabController,
            ),
          ),
        ],
      ),
    );
  }
}
