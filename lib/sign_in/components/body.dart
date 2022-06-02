import 'package:flutter/material.dart';
import 'package:myapp_nhathero/home/home_screen.dart';
import 'package:myapp_nhathero/my_page/my_home_page.dart';
import 'package:myapp_nhathero/sign_in/components/sign_in_button.dart';

import '../../components/constants.dart';
import '../../components/form_error.dart';
import '../sign_in_screen.dart';

class Body extends StatefulWidget{
  @override
  _BodyState createState()=> _BodyState();
}
class _BodyState extends State<Body>{
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  bool remember = false;
  bool hidePassword =true;
  final List<String?> errors = [];

  void addError({String? error}) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError({String? error}) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Center(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.1,),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Image.asset('assets/Logo-White1.png'),
                      const Text('Welcome\n Back', style: TextStyle(fontSize:20, color: Colors.white),textAlign: TextAlign.center,),
                    ]
                ) ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 23),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildEmailFormField(),
                    const SizedBox(height: 10,),
                    buildPasswordFormField(),
                    const SizedBox(height: 10,),
                    const Text('Forgot Password?',style: TextStyle(fontSize: 16,color: Colors.white54,decoration: TextDecoration.underline),),
                    const SizedBox(height: 30,),
                    SizedBox(
                      child: FormError(errors: errors),
                    ),
                    SignInButton(
                      text: 'Sign In',
                      press: (){
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          Navigator.pushNamed(context, MyHomePage.routeName);
                        }
                      },
                      colorButtonText: Colors.indigoAccent,
                      colorBackGroundButton: Colors.white,
                      imageUrl: 'assets/images/Right-Arrow 1.png',
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      style: const TextStyle(color: Colors.white, fontSize: 20),
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue)=> email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
          if (emailValidatorRegExp.hasMatch(value)) {
            removeError(error: kInvalidEmailError);
          }
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kEmailNullError);
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Email Address",
        labelStyle: TextStyle(color: Colors.white70),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
        style: const TextStyle(color: Colors.white, fontSize: 20),
        obscureText: hidePassword,
        onSaved: (newValue) => password = newValue,
        onChanged: (value) {
          if (value.isNotEmpty) {
            removeError(error: kPassNullError);
            if (value.length >= 8) {
              removeError(error: kShortPassError);
            }
          }
          password = value;
        },
        validator: (value) {
          if (value!.isEmpty) {
            addError(error: kPassNullError);
            return "";
          } else if (value.length < 8) {
            addError(error: kShortPassError);
            return "";
          }
          return null;
        },
        decoration:  InputDecoration(
            labelText: "Password",
            labelStyle: const TextStyle(color: Colors.white70),
            floatingLabelBehavior: FloatingLabelBehavior.always,
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  hidePassword =!hidePassword;
                });
              },
              icon: const Icon(Icons.visibility_outlined, size: 20,textDirection: TextDirection.ltr,),) // myIcon is a 48px-wide widget.
        )
    );
  }
}