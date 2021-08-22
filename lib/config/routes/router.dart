import 'package:flutter/material.dart';
import 'package:movea_app/modules/auth/screens/confirm_new_page.dart';
import 'package:movea_app/modules/auth/screens/fav_genre_page.dart';
import 'package:movea_app/modules/auth/screens/on_boarding_page.dart';
import 'package:movea_app/modules/auth/screens/sign_in_page.dart';
import 'package:movea_app/modules/auth/screens/sign_up_page.dart';
import 'package:movea_app/modules/common_widget/common_widget_page.dart';
import 'package:movea_app/modules/home/screens/checkout_movie_page.dart';
import 'package:movea_app/modules/home/screens/home_page.dart';
import 'package:movea_app/modules/home/screens/movie_info_page.dart';
import 'package:movea_app/modules/home/screens/select_seat_page.dart';
import 'package:movea_app/modules/profile/edit_profile_page.dart';
import 'package:movea_app/modules/profile/screens/profile_page.dart';
import 'package:movea_app/modules/ticket/ticket_detail_page.dart';
import 'package:movea_app/root_page.dart';
import 'package:movea_app/modules/home/screens/select_cinema_page.dart';
import 'package:movea_app/modules/ticket/my_ticket_page.dart';
import 'package:movea_app/modules/wallet/screens/my_wallet_page.dart';
import 'package:movea_app/modules/wallet/screens/top_up_page.dart';
import 'package:movea_app/widgets/stful/pages.dart';

class Router {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case 'CommonWidgetPage':
        {
          return MaterialPageRoute(builder: (_) => CommonWidgetPage());
        }
      case 'ListPage':
        {
          return MaterialPageRoute(builder: (_) => ListPage());
        }
      case 'OnBoardingPage':
        {
          return MaterialPageRoute(builder: (_) => OnBoardingPage());
        }
      case 'SignInPage':
        {
          return MaterialPageRoute(builder: (_) => SignInPage());
        }
      case 'SignUpPage':
        {
          return MaterialPageRoute(builder: (_) => SignUpPage());
        }
      case 'FavoriteGenrePage':
        {
          return MaterialPageRoute(builder: (_) => FavoriteGenrePage());
        }
      case 'ConfirmNewPage':
        {
          return MaterialPageRoute(builder: (_) => ConfirmNewPage());
        }
      case 'HomePage':
        {
          return MaterialPageRoute(builder: (_) => HomePage());
        }
      case 'MovieInfoPage':
        {
          return MaterialPageRoute(builder: (_) => MovieInfoPage());
        }
      case 'SelectCinemaPage':
        {
          return MaterialPageRoute(builder: (_) => SelectCinemaPage());
        }case 'SelectSeatPage':
        {
          return MaterialPageRoute(builder: (_) => SelectSeatPage());
        }
      case 'CheckOutMoviePage':
        {
          return MaterialPageRoute(builder: (_) => CheckOutMoviePage());
        }
      case 'MyTicketPage':
        {
          return MaterialPageRoute(builder: (_) => MyTicketPage());
        }
      case 'TicketDetailPage':
        {
          return MaterialPageRoute(builder: (_) => TicketDetailPage());
        }
      case 'MyWalletPage':
        {
          return MaterialPageRoute(builder: (_) => MyWalletPage());
        }
      case 'TopUpPage':
        {
          return MaterialPageRoute(builder: (_) => TopUpPage());
        }
      case 'ProfilePage':
        {
          return MaterialPageRoute(builder: (_) => ProfilePage());
        }
      case 'EditProfilePage':
        {
          return MaterialPageRoute(builder: (_) => EditProfilePage());
        }

      case 'RootPage':
        {
          return MaterialPageRoute(builder: (_) => RootPage());
        }

      default:
        {
          return MaterialPageRoute(
              builder: (_) => Scaffold(
                    body: Center(
                        child: Text('No route defined for ${settings.name}')),
                  ));
        }
    }
  }
}
