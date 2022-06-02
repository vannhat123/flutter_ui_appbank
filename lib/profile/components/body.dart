import 'dart:js';

import 'package:flutter/material.dart';
import 'package:myapp_nhathero/sign_in/components/sign_in_button.dart';

import '../../home/home_first.dart';
import '../../size_config.dart';
import '../../time_bottom_config/time_bottom_config.dart';
class Body extends StatelessWidget{
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: SizedBox(
            child:  Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                child: Column(
                    children: [
                      // TimeBottomConfig.iconHead(Colors.black),
                      Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Profile',style:
                              TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.black,),
                              ),
                              const SizedBox(height: 20,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  Image.asset('assets/images/Profile Image.png',),
                                  Container(
                                    padding: const EdgeInsets.only(top: 11),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: const [
                                        Text('Emma Ashley', style:
                                        TextStyle(fontSize: 20, color: Colors.indigoAccent,fontWeight: FontWeight.bold),),
                                        Text('Online',style: TextStyle(color: Colors.indigoAccent,fontSize: 18),)
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          )),
                      Expanded(
                          flex: 4,
                          child: Column(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('Username',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                                  SizedBox(height: 10,),
                                  Text('Emma_ashley',style: TextStyle(fontSize: 15,color: Colors.indigoAccent,fontWeight: FontWeight.bold),),
                                  Divider(
                                    color: Colors.grey,
                                    thickness: 0.4,
                                  ),
                                  SizedBox(height: 10,)
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('First Name',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                                  SizedBox(height: 10,),
                                  Text('Emma',style: TextStyle(fontSize: 15,color: Colors.indigoAccent,fontWeight: FontWeight.bold),),
                                  Divider(
                                    color: Colors.grey,
                                    thickness: 0.4,
                                  ),
                                  SizedBox(height: 10,)
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('Last Name',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                                  SizedBox(height: 10,),
                                  Text('Ashley',style: TextStyle(fontSize: 15,color: Colors.indigoAccent,fontWeight: FontWeight.bold),),
                                  Divider(
                                    color: Colors.grey,
                                    thickness: 0.4,
                                  ),
                                  SizedBox(height: 10,)
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('Date of Birth',style: TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.bold),),
                                  SizedBox(height: 10,),
                                  Text('14-11-2000',style: TextStyle(fontSize: 15,color: Colors.indigoAccent,fontWeight: FontWeight.bold),),
                                  Divider(
                                    color: Colors.grey,
                                    thickness: 0.4,
                                  ),
                                  SizedBox(height: 40,)
                                ],
                              ),
                            ],
                          )
                      ),
                      Expanded(
                        flex: 1,
                          child: SignInButton(
                            text: 'Sign Out',
                            press: (){
                              Navigator.pushNamed(context,HomeFirst.routeName);
                            },
                            colorButtonText: Colors.indigoAccent,
                            colorBackGroundButton: Colors.white,
                            imageUrl: 'assets/images/Log out 1.png',
                          ),
                        )
                    ]
                )
            )
        )
    );
  }


}