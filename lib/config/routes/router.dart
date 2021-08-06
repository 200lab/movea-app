import 'package:flutter/material.dart';
import 'package:movea_app/modules/auth/screens/fav_genre_page.dart';
import 'package:movea_app/modules/auth/screens/on_boarding_page.dart';
import 'package:movea_app/modules/auth/screens/sign_in_page.dart';
import 'package:movea_app/modules/auth/screens/sign_up_page.dart';

class Router {
  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
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
      default:
        {
          return MaterialPageRoute(
              builder: (_) =>
                  Scaffold(
                    body: Center(
                        child: Text('No route defined for ${settings.name}')),
                  ));
        }
    }
  }
}
