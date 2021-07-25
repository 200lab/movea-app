import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movea_app/pages/new-user/on_boarding.dart';
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
      home: OnBoardingPage(),
    );
  }
}
