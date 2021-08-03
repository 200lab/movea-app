// import 'package:flutter/material.dart';
// import 'package:movea_app/config/themes/app_color.dart';
// import 'package:movea_app/constants/app_constants.dart';
// import 'package:movea_app/modules/home/screens/home_page.dart';
// import 'package:movea_app/widgets/bottom_sentence.dart';
// import 'package:movea_app/widgets/stless/classic_button.dart';
//
// class WalletCheckoutPage extends StatelessWidget {
//   const WalletCheckoutPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           children: [
//             Container(
//               height: MediaQuery.of(context).size.height / 3,
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(
//                   image: DecorationImage(
//                       scale: 0.8,
//                       image: AssetImage(
//                           'assets/illustrations/illustration2.png'))),
//             ),
//             Text(
//               'Happy Watching!',
//               style: kTextTittleStyle,
//             ),
//             Text(
//               'You have successfully\nbought the ticket',
//               style: kTextThinStyle,
//               textAlign: TextAlign.center,
//             ),
//             ClassicButton(
//               height: MediaQuery.of(context).size.height / 14,
//               width: MediaQuery.of(context).size.width * 4 / 5,
//               radius: 20.0,
//               color: kColorBlueMain,
//               onTap: () {},
//               child: Text('My Ticket'),
//             ),
//             BottomSentence(
//               content1: 'Discover new movie?',
//               content2: 'Back to home',
//               fnc: () {
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (_) => HomePage()));
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
