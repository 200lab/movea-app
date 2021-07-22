import 'package:flutter/material.dart';
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
    final maxHeight = MediaQuery
        .of(context)
        .size
        .height;
    final maxWidth = MediaQuery
        .of(context)
        .size
        .width;


    return Scaffold(
      body: Container(
        width: MediaQuery
            .of(context)
            .size
            .width,
        color: AppColor.blueMain,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            //   CustomButton(maxWidth/5,maxHeight/8,AppColor.white,),
            //   CustomButton(maxHeight/8,maxWidth/5)

            CustomButton(width: maxWidth/5, height: maxHeight / 8,
            clr: AppColor.white, child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('SAT'),
                    Text('20')
                  ],
                ))
        ],
      ),
    ));
  }
}
