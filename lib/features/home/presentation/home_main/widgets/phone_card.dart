// import 'package:flutter/material.dart';
// import 'package:phone_app/features/home/data/model/phone_model.dart';

// class PhoneCard extends StatelessWidget {
//   final Phone phone;

//   const PhoneCard({required this.phone});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(8.0),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: const BorderRadius.all(Radius.circular(10.0)),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.shade300,
//             offset: const Offset(0, 2),
//             blurRadius: 4.0,
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Container(
//             padding: const EdgeInsets.all(16.0),
//             child: Text(
//               phone.model,
//               style: const TextStyle(
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
//           Container(
//             padding:
//                 const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//             child: Text(
//               phone.brand,
//               style: TextStyle(
//                 fontSize: 16.0,
//                 color: Colors.grey[600],
//               ),
//             ),
//           ),
//           Container(
//             padding:
//                 const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//             child: Text(
//               "\$ ${phone.price.toString()}",
//               style: TextStyle(
//                 fontSize: 16.0,
//                 color: Colors.grey[600],
//               ),
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 16.0),
//             child: Text(
//               phone.description,
//               style: TextStyle(
//                 fontSize: 16.0,
//                 color: Colors.grey[600],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
