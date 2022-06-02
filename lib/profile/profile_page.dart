import 'package:flutter/material.dart';
import 'package:myapp_nhathero/components/constants.dart';
import 'package:myapp_nhathero/my_page/components/custom_bottom_nav_bar.dart';
import 'package:myapp_nhathero/profile/components/body.dart';
class Profile_Page extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: kPrimaryColor,
     ),
     body: const Body(),
     bottomNavigationBar:CustomBottomNavBar(colorIconDeactive: Colors.indigoAccent, validIconNotification: true,),
   );
  }

}