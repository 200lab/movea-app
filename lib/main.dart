import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:movea_app/config/themes/app_color.dart';
import 'config/routes/routes.dart';
import 'config/routes/router.dart' as router;

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
          primaryColor: DarkTheme.darkerBackground,
          scaffoldBackgroundColor: DarkTheme.darkerBackground,
          fontFamily: 'montserrat',
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: DarkTheme.white,
                displayColor: DarkTheme.white,
              )),
      initialRoute: Routes.listPage,
      onGenerateRoute: router.Router.generateRoute,
    );
  }
}
