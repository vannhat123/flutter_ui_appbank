import 'package:flutter/material.dart';
import 'package:myapp_nhathero/components/constants.dart';
import 'package:myapp_nhathero/sign_in/components/sign_in_button.dart';
import 'package:myapp_nhathero/sign_in/sign_in_screen.dart';
import 'package:myapp_nhathero/sign_up/components/sign_up_button.dart';
import 'package:myapp_nhathero/sign_up/sign_up_screen.dart';
class HomeScreen extends StatelessWidget{
  static String routeName ='home_screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
      ),
      backgroundColor: kPrimaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
              padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.2,),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Image.asset('assets/Logo-White1.png'),
                    const Text('Welcome\n Back', style: TextStyle(fontSize:20, color: Colors.white,),textAlign: TextAlign.center,),
                  ]
              ) ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SignInButton(
                  text: 'Sign In',
                  press: (){
                    Navigator.pushNamed(context,SignInScreen.routeName);
                  },
                  colorButtonText: Colors.indigoAccent,
                  colorBackGroundButton: Colors.white,
                  imageUrl: 'assets/images/Right-Arrow 1.png',
                ),
                const SizedBox(height: 25,),
                SignUpButton(
                  text:'Sign Up',
                  press: (){
                    Navigator.pushNamed(context, SignUpScreen.routeName);
                  },
                  colorButtonText: Colors.indigoAccent,
                  colorBackGroundButton: Colors.white,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

}