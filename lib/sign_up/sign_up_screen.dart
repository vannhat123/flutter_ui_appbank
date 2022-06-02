import 'package:flutter/material.dart';
import 'package:myapp_nhathero/sign_up/components/body.dart';
class SignUpScreen extends StatelessWidget{
  static String routeName = '/sign_up';

  SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.indigoAccent,
      body: Body(),
    );
  }

}