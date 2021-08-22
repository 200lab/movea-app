import 'package:flutter/material.dart';
import 'package:movea_app/config/routes/routes.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'package:movea_app/widgets/stless/classic_button.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    List<String> pages = [
      Routes.commonWidgetPage,
      Routes.onBoardingPage,
      Routes.signInPage,
      Routes.signUpPage,
      Routes.favoriteGenrePage,
      Routes.confirmNewPage,
      Routes.homePage,
      Routes.movieInfPage,
      Routes.selectCinemaPage,
      Routes.selectSeatPage,
      Routes.checkOutMoviePage,
      Routes.myTicketPage,
      Routes.myTicketPage,
      Routes.ticketDetailPage,
      Routes.myWalletPage,
      Routes.topUpPage,
      Routes.profilePage,
      Routes.editProfilePage
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('All Screens'),
      ),
      body: SafeArea(
        child: ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: pages
                .map((e) => Builder(
                    builder: (context) => Container(
                      margin: EdgeInsets.only(bottom: 20),
                      child: ClassicButton(
                            height: size.height / 15,
                            width: size.width,
                            color: Colors.indigo,
                            child: Center(child: Text(e)),
                            onTap: () {
                              Navigator.pushNamed(context, e);
                            },
                          ),
                    )))
                .toList()),
      ),
    );
  }
}
