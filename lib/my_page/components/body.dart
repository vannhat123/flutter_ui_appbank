import 'package:flutter/material.dart';
import 'package:myapp_nhathero/my_page/menu_page.dart';
import 'package:myapp_nhathero/size_config.dart';
import 'package:myapp_nhathero/time_bottom_config/time_bottom_config.dart';
import 'package:myapp_nhathero/transactions/components/test.dart';
import 'package:myapp_nhathero/transactions/transaction_page.dart';
class Body extends StatelessWidget{
  static const double sizeicon =18;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      color: Colors.indigoAccent,
      child: ListView(
        children: [
          Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
              child: Column(
                  children: [
                    TimeBottomConfig.iconHead(Colors.white),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          child: Text('Good Morning \n Emma',
                            style: TextStyle(fontFamily: 'Roboto',fontSize: 25,color: Colors.white),),
                        ),
                        SizedBox(height: getProportionateScreenHeight(20)),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                          height: getProportionateScreenHeight(300),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(40.0)),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white10,
                                blurRadius: 10.0,
                                spreadRadius: 5.0,),],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text('Your total balance', style: TextStyle(fontSize: 18),),
                                  const Spacer(),
                                  Image.asset('assets/images/More 1.png')
                                ],
                              ),
                              const SizedBox(height: 10,),
                              const Text('\$8500.00',style:
                              TextStyle(fontSize: 30,color: Colors.indigoAccent,fontWeight: FontWeight.bold),),
                              const SizedBox(height: 15,),
                              Container(
                                height: getProportionateScreenHeight(150),
                                alignment: Alignment.center,
                                child:  Image.asset('assets/images/Columns.png',),
                              )

                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: getProportionateScreenHeight(30)),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                      height: getProportionateScreenHeight(140),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(25.0)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white10,
                            blurRadius: 10.0,
                            spreadRadius: 5.0,),],
                      ),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Text('Check your\n Bank Account',style:TextStyle(fontSize: 20,color: Colors.indigoAccent),),
                            const Spacer(),
                            GestureDetector(
                              child: const Align(
                                child: Icon(Icons.arrow_forward_ios_rounded, color: Colors.indigoAccent,),
                              ),
                              onTap: (){
                                Navigator.push(context,MaterialPageRoute(
                                    builder: (context) =>  const TransactionPage()));
                              },
                            ),
                          ]
                      ),
                    ),
                  ]
              )
          ),
        ],
      ),
    );
  }
}