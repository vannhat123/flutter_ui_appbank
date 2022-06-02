import 'package:flutter/material.dart';
import 'package:myapp_nhathero/components/constants.dart';
import 'package:myapp_nhathero/my_page/components/custom_bottom_nav_bar.dart';
import 'package:myapp_nhathero/notification/components/body.dart';

class NotificationPage extends StatelessWidget{
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
      ),
      body: const Body(),
      bottomNavigationBar: CustomBottomNavBar(colorIconHomepage: Colors.indigoAccent, validIconProfile: true,),
    );
  }

}