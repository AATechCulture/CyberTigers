// import 'package:flutter/material.dart';
// import 'package:glideguide/views/map/map_page.dart';

// class DetailsBottomSheet extends StatelessWidget {
//   final String query;

//   const DetailsBottomSheet({Key? key, required this.query}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Column(children: [
//       Container(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(query),
//                 ElevatedButton(
//                   child: const Text('Close'),
//                   onPressed: () => Navigator.pop(context),
//                 ),
//               ],
//             ),
//             const MapPage()
//           ],
//         ),
//       ),
//     ]);
//   }

//   // static void show(BuildContext context, String query) {
//   //   double screenheight = MediaQuery.of(context).size.height;
//   //   showModalBottomSheet(
//   //     context: context,
//   //     isScrollControlled: true,
//   //     builder: (BuildContext context) {
//   //       return SizedBox(
//   //         height: screenheight * 0.92,
//   //         child: DetailsBottomSheet(query: query),
//   //       );
//   //     },
//   //   );
//   // }
// }
