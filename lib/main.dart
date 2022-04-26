import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movea_app/src/config/app_color.dart';
import 'package:movea_app/src/config/text_style.dart';
import 'package:movea_app/src/constants/asset_path.dart';
import 'package:movea_app/src/modules/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //white status bar
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: 'montserrat',
          scaffoldBackgroundColor: DarkTheme.darkerBackground,
          textTheme: Theme.of(context).textTheme.apply(
              bodyColor: DarkTheme.white, displayColor: DarkTheme.white)),
      home: const HomePage(),
    );
  }
}
