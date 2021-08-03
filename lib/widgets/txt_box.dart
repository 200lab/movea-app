// import 'package:flutter/material.dart';
// import 'package:movea_app/config/themes/app_color.dart';
// import 'package:movea_app/constants/app_constants.dart';
//
// class TxtBox extends StatelessWidget {
//   final height;
//   final content;
//
//   const TxtBox({Key? key, this.height, this.content}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//         //box
//         Container(
//             margin: EdgeInsets.fromLTRB(30, 15, 30, 0),
//             alignment: Alignment.center,
//             height: height,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(10),
//                 border: Border.all(
//                   color: kColorWhite,
//                   // color: AppColor.blueMain
//                 )),
//             child: Padding(
//               padding: const EdgeInsets.only(left: 10),
//               child: TextField(
//                   decoration: InputDecoration(
//                       hintText: content,
//                       border: InputBorder.none,
//                       hintStyle: kTextFieldStyle)),
//             )),
//         //lable
//         Container(
//           color: kColorDarkerBackground,
//           margin: EdgeInsets.only(left: MediaQuery.of(context).size.width / 9),
//           child: Padding(
//             padding: EdgeInsets.symmetric(horizontal: 8),
//             child: Text(content, style: kTextSmallThinStyle),
//           ),
//         )
//       ],
//     );
//   }
// }
