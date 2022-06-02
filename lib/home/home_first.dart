import 'package:flutter/material.dart';

import 'home_screen.dart';

class HomeFirst extends StatelessWidget{
  static String routeName = '/home_first';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            child: Align(
               child: Image.asset('assets/Colorful-Logo 1.png'),
          ),
            onTap: (){
              Navigator.push(context,MaterialPageRoute(
                  builder: (context) =>  HomeScreen()));
            },
          ),
        ],
      ),
    );
  }
}