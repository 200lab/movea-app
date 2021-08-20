import 'package:flutter/material.dart';
import 'package:movea_app/config/themes/text_style.dart';
import 'package:movea_app/models/movie.dart';

class CatersBar extends StatelessWidget {
  const CatersBar({ Key? key ,required this.width}) : super(key: key);

  final double width;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: movies[0].casters.map((e){
          return Builder(builder: (context) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10,bottom: 10),
                  child: Container(
                    width: width/4.5,
                    height: width/5,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(e.profileImageUrl))
                    ),
                  ),
                ),
                Container(
                  child: Text(e.name,style: TxtStyle.heading4Light,),
                )
              ],
            );
          });
        }).toList(),
      ),
    );
  }
}