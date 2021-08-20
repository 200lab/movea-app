// import 'package:flutter/material.dart';
// import 'package:movea_app/models/movie.dart';
// import 'package:movea_app/widgets/stful/filter_button.dart';

// class GerneBar extends StatelessWidget {
//   final double width;
//   const GerneBar({Key? key, required this.width}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.horizontal,
//       child: Row(
//         children: genres.map((e) {
//           return Builder(builder: (context) {
//             return Padding(
//               padding: const EdgeInsets.only(right: 10.0),
//               child: FilterButton(height: 40, width: width, content: e),
//             );
//           });
//         }).toList(),
//       ),
//     );
//   }
// }
