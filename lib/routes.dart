
import 'package:flutter/cupertino.dart';
import 'package:myapp_nhathero/components/drawer_circle.dart';
import 'package:myapp_nhathero/home/home_first.dart';
import 'package:myapp_nhathero/home/home_screen.dart';
import 'package:myapp_nhathero/my_page/my_home_page.dart';
import 'package:myapp_nhathero/sign_in/sign_in_screen.dart';
import 'package:myapp_nhathero/sign_up/sign_up_screen.dart';

final Map<String, WidgetBuilder> routes={
  HomeScreen.routeName: (context) => HomeScreen(),
  HomeFirst.routeName: (context)=> HomeFirst(),
  SignInScreen.routeName: (context) =>  SignInScreen(),
  SignUpScreen.routeName: (context)=> SignUpScreen(),
  MyHomePage.routeName: (context) => MyHomePage(),
};