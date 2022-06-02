import 'package:flutter/material.dart';
import 'package:myapp_nhathero/components/constants.dart';
import 'package:myapp_nhathero/sign_in/components/body.dart';
class SignInScreen extends StatelessWidget{
  static String routeName = '/sign_in';

  SignInScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
      ),
      backgroundColor: Colors.indigoAccent,
      body: Body(),
    );
  }

}