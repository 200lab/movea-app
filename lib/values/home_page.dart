import 'package:flutter/material.dart';
import 'package:movea_app/pages/new-user/sign_in.dart';
import 'package:movea_app/values/app_color.dart';
import 'package:movea_app/widgets/custom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final maxHeight = MediaQuery.of(context).size.height;
    final maxWidth = MediaQuery.of(context).size.width;

    return Scaffold(body: Container());
  }
}
