// import 'package:flutter/material.dart';
// import 'package:movea_app/config/themes/app_color.dart';
// import 'package:movea_app/constants/app_constants.dart';
// import 'package:movea_app/modules/auth/screens/sign_in_page.dart';
// import 'package:movea_app/widgets/stless/classic_button.dart';
//
// class OnBoardingPage extends StatelessWidget {
//   const OnBoardingPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               child: Image.asset('assets/illustrations/logo.png'),
//             ),
//             Padding(
//                 padding: EdgeInsets.only(top: 20),
//                 child: Text('New Experience', style: kTextButtonStyle)),
//             Padding(
//               padding: EdgeInsets.only(top: 20),
//               child: Text(
//                 'Watch a new movie much \n easier than before',
//                 style: kTextThinStyle,
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 80),
//               child: ClassicButton(
//                 width: MediaQuery.of(context).size.width / 1.5,
//                 height: MediaQuery.of(context).size.height / 13,
//                 radius: 20.0,
//                 color: kColorBlueMain,
//                 child: Center(
//                   child: Text(
//                     'Get Started',
//                     style: kTextButtonStyle,
//                   ),
//                 ),
//                 onTap: () {
//                   Navigator.push(
//                       context, MaterialPageRoute(builder: (_) => SignInPage()));
//                 },
//               ),
//             ),
//             Padding(
//                 padding: EdgeInsets.only(top: 30),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Text(
//                       'Create new account? ',
//                       style: kTextFieldStyle,
//                     ),
//                     InkWell(
//                       onTap: () {
//                         Navigator.push(context,
//                             MaterialPageRoute(builder: (_) => SignInPage()));
//                       },
//                       child: Text(
//                         'Sign In',
//                         style: TextStyle(
//                             fontSize: 16,
//                             color: kColorLightBlue,
//                             fontWeight: FontWeight.w600),
//                       ),
//                     )
//                   ],
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }
