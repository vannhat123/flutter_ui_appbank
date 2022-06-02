import 'package:flutter/material.dart';
import 'package:myapp_nhathero/components/constants.dart';
import 'package:myapp_nhathero/my_page/components/body.dart';
import 'package:myapp_nhathero/my_page/components/custom_bottom_nav_bar.dart';
import 'package:myapp_nhathero/my_page/components/drawer_menubar.dart';

class MyHomePage extends StatelessWidget{
  static String routeName ='/my_home_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: Row(
          children: [
            const Spacer(),
            Image.asset('assets/images/Profile Image.png',width: 50,),
          ],
        )
        ),
      body: Body(),
      drawer: DrawerMenubar(),
      bottomNavigationBar: CustomBottomNavBar(validIconNotification: true,validIconProfile: true,) ,
    );
  }

}