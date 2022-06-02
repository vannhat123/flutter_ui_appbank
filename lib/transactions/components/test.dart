
import 'package:flutter/material.dart';
// import 'package:myapp_nhathero/transactions/transaction_page.dart';
//
// class Test extends StatelessWidget {
//   late double withImageIcon = 30;
//   late double sizeText = 22;
//   late Color colorText = Colors.indigoAccent;
//   late double withIconArrow = 25;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.green,
//       appBar: AppBar(title: const Text('Drawer menu')),
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   margin: const EdgeInsets.only(top: 50),
//                   height: 100,
//                   child: Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Image.asset('assets/images/Profile Image.png'),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: const [
//                           Text(
//                             'Emma Ashley',
//                             style: TextStyle(
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black),
//                           ),
//                           Text(
//                             '@emma_ashley',
//                             style: TextStyle(fontSize: 15, color: Colors.black),
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     ListTile(
//                       leading: SizedBox(
//                         width: 270,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Image.asset(
//                               'assets/images/iconmenu/Payments 1.png',
//                               width: withImageIcon,
//                             ),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             Text(
//                               'Payments',
//                               style: TextStyle(
//                                   fontSize: sizeText, color: colorText),
//                             ),
//                             const Spacer(),
//                             Icon(
//                               Icons.arrow_forward_ios_rounded,
//                               size: withIconArrow,
//                               color: colorText,
//                             )
//                           ],
//                         ),
//                       ),
//                       onTap: () => Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (_) => const Note(),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     ListTile(
//                       leading: SizedBox(
//                         width: 270,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Image.asset(
//                                 'assets/images/iconmenu/Payments 1-1.png',
//                                 width: withImageIcon),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             Text(
//                               'Transactions',
//                               style: TextStyle(
//                                   fontSize: sizeText, color: colorText),
//                             ),
//                             const Spacer(),
//                             Icon(
//                               Icons.arrow_forward_ios_rounded,
//                               size: withIconArrow,
//                               color: colorText,
//                             )
//                           ],
//                         ),
//                       ),
//                       onTap: () => Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (_) => const Note(),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     ListTile(
//                       leading: SizedBox(
//                         width: 270,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Image.asset('assets/images/iconmenu/My Cards 1.png',
//                                 width: withImageIcon),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             Text(
//                               'My Cards',
//                               style: TextStyle(
//                                   fontSize: sizeText, color: colorText),
//                             ),
//                             const Spacer(),
//                             Icon(
//                               Icons.arrow_forward_ios_rounded,
//                               size: withIconArrow,
//                               color: colorText,
//                             )
//                           ],
//                         ),
//                       ),
//                       onTap: () => Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (_) => const Note(),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     ListTile(
//                       leading: SizedBox(
//                         width: 270,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Image.asset(
//                               'assets/images/iconmenu/Promotions 1.png',
//                               width: withImageIcon,
//                             ),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             Text(
//                               'Promotions',
//                               style: TextStyle(
//                                   fontSize: sizeText, color: colorText),
//                             ),
//                             const Spacer(),
//                             Icon(
//                               Icons.arrow_forward_ios_rounded,
//                               size: withIconArrow,
//                               color: colorText,
//                             ),
//                           ],
//                         ),
//                       ),
//                       onTap: () => Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (_) => const Note(),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     ),
//                     ListTile(
//                       leading: SizedBox(
//                         width: 270,
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Image.asset(
//                               'assets/images/iconmenu/Payments 1-2.png',
//                               width: withImageIcon,
//                             ),
//                             const SizedBox(
//                               width: 10,
//                             ),
//                             Text(
//                               'Savings',
//                               style: TextStyle(
//                                   fontSize: sizeText, color: colorText),
//                             ),
//                             const Spacer(),
//                             Icon(
//                               Icons.arrow_forward_ios_rounded,
//                               size: withIconArrow,
//                               color: colorText,
//                             )
//                           ],
//                         ),
//                       ),
//                       onTap: () => Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (_) => const Note(),
//                         ),
//                       ),
//                     ),
//                     const SizedBox(
//                       height: 100,
//                     ),
//                     SizedBox(
//                         width: 270,
//                       child: SignInButton(
//                         text: 'Sign Out',
//                         colorButtonText: Colors.indigoAccent,
//                         colorBackGroundButton: Colors.white,
//                         imageUrl: 'assets/images/Log out 1.png',
//                         press: () {
//                           Navigator.pushNamed(context, HomeFirst.routeName);
//                         },
//                       ),
//                        )
//                   ],
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class Note extends StatelessWidget {
//   const Note({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('‘Note’'),
//       ),
//       body: const Center(
//         child: Icon(
//           Icons.note_add,
//           size: 120.0,
//           color: Colors.orange,
//         ),
//       ),
//     );
//   }
// }
//
// class Mood extends StatelessWidget {
//   const Mood({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('‘Mood’'),
//       ),
//       body: const Center(
//         child: Icon(
//           Icons.mood,
//           size: 120.0,
//           color: Colors.orange,
//         ),
//       ),
//     );
//   }
// }
//
// class Promotions extends StatelessWidget {
//   const Promotions({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Promotions'),
//       ),
//       body: const Center(
//         child: Icon(
//           Icons.date_range,
//           size: 120.0,
//           color: Colors.orange,
//         ),
//       ),
//     );
//   }
// }
class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Reply demo"),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: const Color(0xff344955),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          height: 56.0,
          child: Row(children: <Widget>[
            IconButton(
              onPressed: showMenu,
              icon: Icon(Icons.menu),
              color: Colors.white,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add),
              color: Colors.white,
            )
          ]),
        ),
      ),
    );
  }

  showMenu() {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 500,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
              color: Color(0xff232f34),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  height: 36,
                ),

                Container(
                  height: 56,
                  color: Color(0xff4a6572),
                )
              ],
            ),
          );
        }
        );
  }
}