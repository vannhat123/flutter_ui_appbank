import 'package:flutter/material.dart';
import 'package:myapp_nhathero/notification/notification_page.dart';

import '../../profile/profile_page.dart';
import '../../size_config.dart';
class CustomBottomNavBar extends StatelessWidget{
  Color? colorIconHomepage;
  Color? colorIconDeactive;
  CustomBottomNavBar({this.colorIconHomepage,this.colorIconDeactive,this.validIconNotification,this.validIconProfile,Key? key}) : super(key: key);
  bool? validIconNotification = false;
  bool? validIconProfile = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: getProportionateScreenWidth(270),
          height: 100,
       //   color: Colors.white,
          child: Row(
            children: [
              Image.asset('assets/images/Wallet 1.png' ,width:23,),
              const Spacer(),
              GestureDetector(
                child:  Align(
                  child:  Image.asset('assets/images/Homepage.png',color: colorIconHomepage,width:23,),
                ),
                onTap: (){
                  if (validIconNotification!) {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) =>  const NotificationPage()));
                  }
                },
              ),
              const Spacer(),
              GestureDetector(
                child:  Align(
                  child: Image.asset('assets/images/Deactive.png',color: colorIconDeactive,width:23,),
                ),
                onTap: (){
                  if (validIconProfile!) {
                    Navigator.push(context,MaterialPageRoute(
                        builder: (context) =>  Profile_Page()));
                  }

                },
              ),
            ],
          ),
        )
      ],
    );
  }
}