import 'package:flutter/material.dart';
import 'package:myapp_nhathero/home/home_screen.dart';
import 'package:myapp_nhathero/sign_in/components/sign_in_button.dart';
import 'package:myapp_nhathero/sign_up/components/sign_up_button.dart';
import 'package:myapp_nhathero/size_config.dart';
import '../../components/constants.dart';

import '../../components/form_error.dart';
import '../../my_page/my_home_page.dart';
import '../sign_up_screen.dart';


class Body extends StatefulWidget{
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState()=> _BodyState();
}
class _BodyState extends State<Body>{
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? password;
  String? conform_password;
  bool remember = false;
  bool checkBoxValue = false;
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
              Expanded(
                  flex: 2,
                  child: Padding(
                      padding:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.1,),
                      child:Column(
                          children:[
                            Image.asset('assets/Logo-White1.png'),
                            const Text('Welcome\n Back', style: TextStyle(fontSize:20, color: Colors.white),textAlign: TextAlign.center,),
                          ]
                      ) )),
              Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 23),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildEmailFormField(),
                        const SizedBox(height: 10,),
                        buildPasswordFormField(),
                        const SizedBox(height: 10,),
                        buildConfirmPasswordFormField(),
                        SizedBox(
                          child: FormError(errors: errors),
                        ),
                        checkBoxAgree(),
                        SignUpButton(
                          text: 'Sign Up',
                          press: (){
                            if (_formKey.currentState!.validate()) {
                              _formKey.currentState!.save();
                              Navigator.pushNamed(context, HomeScreen.routeName);
                            }
                          },
                          colorButtonText: Colors.indigoAccent,
                          colorBackGroundButton: Colors.white,
                        ),
                      ],
                    ),
                  )
              ),
            ],
          ),
        )
    );
  }
  Container checkBoxAgree(){
    return  Container(
      padding: const EdgeInsets.only(top: 5,bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Checkbox(value: checkBoxValue,
              checkColor: Colors.white,
              activeColor: Colors.green,
              onChanged:(bool? newValue){
                setState(() {
                  checkBoxValue = newValue!;
                });
              },
          ),
          Container(
            margin: const EdgeInsets.only(top:8,left: 3),
            width: MediaQuery.of(context).size.width*0.7,
            child:  const Text('I const agreeI certify that I am 18 years of age and I agree to the User Agreement and Privacy Policy',
              style: TextStyle(
                overflow: TextOverflow.ellipsis,
                fontSize: 15,
                color: Colors.white,
              ),
              maxLines: 5,),
          )

        ],
      ),
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
      obscureText: true,
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
      decoration: const InputDecoration(
        labelText: "Password",
        labelStyle: TextStyle(color: Colors.white70),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

  TextFormField buildConfirmPasswordFormField() {
    return TextFormField(
      style: const TextStyle(color: Colors.white, fontSize: 20),
      obscureText: true,
      onSaved: (newValue) => conform_password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kConfirmPassNullError);
          if (value == password ) {
            removeError(error: kMatchPassError);

          }
        }
        conform_password = value;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kConfirmPassNullError);
          return "";
        } else if ((password != value)) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Confirm Password",
        labelStyle: TextStyle(color: Colors.white70),
        floatingLabelBehavior: FloatingLabelBehavior.always,
      ),
    );
  }

}