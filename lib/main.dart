import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'modules/common_widget/common_widget_page.dart';

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
          primaryColor: DarkTheme.blueMain,
          scaffoldBackgroundColor: DarkTheme.darkerBackground,
          fontFamily: 'montserrat',
          textTheme: Theme.of(context).textTheme.apply(
            bodyColor: DarkTheme.white,
            displayColor: DarkTheme.white
          )
      ),
      home: CommonWidgetPage(),
    );
  }
}
