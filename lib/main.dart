import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movea_app/pages/my-ticket/checkout_movie_page.dart';
import 'package:movea_app/pages/my-ticket/select_cinema_page.dart';
import 'package:movea_app/pages/my-ticket/success_checkout_page.dart';
import 'package:movea_app/pages/new-user/sign_up.dart';
import 'package:movea_app/values/app_color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //white status bar
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'montserrat',
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(backgroundColor: AppColor.darkerBackground)),
      home: SelectCinemaPage(),
    );
  }
}
