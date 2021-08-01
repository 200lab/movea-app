import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movea_app/config/themes/dark_theme.dart';
import 'package:movea_app/modules/auth/screens/on_boarding.dart';
import 'package:movea_app/modules/auth/screens/sign_up.dart';

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
          scaffoldBackgroundColor: kColorDarkerBackground,
          fontFamily: 'montserrat',
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(backgroundColor: kColorDarkerBackground)),
      home: OnBoardingPage(),
    );
  }
}
