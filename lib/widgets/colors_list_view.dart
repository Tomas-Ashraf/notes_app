// import 'package:flutter/material.dart';

// class ColorsListView extends StatelessWidget {
//   const ColorsListView({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: 10,
//       scrollDirection: Axis.horizontal,
//       itemBuilder: (context, index) {
//         return ColorItem(
//           isActive: true,
//         );
//       },
//     );
//   }
// }

// class ColorItem extends StatefulWidget {
//   const ColorItem({super.key, required this.isActive});
//   final bool isActive;

//   @override
//   State<ColorItem> createState() => _ColorItemState();
// }

// class _ColorItemState extends State<ColorItem> {
//   @override
//   Widget build(BuildContext context) {
//     return
//      widget.isActive
//         ? CircleAvatar(
//             backgroundColor: Colors.white,
//             radius: 38,
//             child: CircleAvatar(
//               radius: 45,
//               backgroundColor: Colors.blue,
//             ),
//           )
//         : CircleAvatar(
//             radius: 36,
//             backgroundColor: Colors.blue,
//           );
//   }
// }
