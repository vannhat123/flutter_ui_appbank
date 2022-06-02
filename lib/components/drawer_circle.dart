//
// import 'package:flutter/material.dart';
// class DrawerCircle extends StatelessWidget{
//   DrawerCircle({Key? key}) : super(key: key);
//   static String routeName ='/drawer_circle123';
//   double radiusCircle = 200 ;
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(title: Text('Drawer Circle'),),
//       body: Stack(
//         children:  [
//            Container(
//              margin: const EdgeInsets.only(left: 25,bottom: 20),
//              height: radiusCircle,
//              width: radiusCircle,
//               decoration: const BoxDecoration(
//                 shape: BoxShape.circle,
//                 gradient: LinearGradient(
//                   colors: [
//                     Color.fromRGBO(199, 47, 248, 100),
//                     Color.fromRGBO(199, 47, 248, 0),
//                   ],
//                     begin: Alignment.topRight,
//                     end: Alignment.bottomLeft
//                 ),
//               ),
//             ),
//           Container(
//             height: radiusCircle,
//             width: radiusCircle,
//             margin: const EdgeInsets.only(left: 15,top: 15),
//             decoration: const BoxDecoration(
//               shape: BoxShape.circle,
//               gradient: LinearGradient(
//                   colors: [
//                     Color.fromRGBO(198, 48, 248, 0),
//                     Color.fromRGBO(47, 86, 248, 100),
//                   ],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight
//               ),
//             ),
//           ),
//           Container(
//             margin: const EdgeInsets.only(right: 20),
//             height: radiusCircle,
//             width: radiusCircle,
//             decoration:  const BoxDecoration(
//               shape: BoxShape.circle,
//               gradient: LinearGradient(
//                   colors: [
//                     Color.fromRGBO(82, 100, 249, 100),
//                     Color.fromRGBO(58, 249, 239, 100),
//                   ],
//                   begin: Alignment.topLeft,
//                   end: Alignment.bottomRight
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
// }