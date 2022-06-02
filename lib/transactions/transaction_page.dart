import 'package:flutter/material.dart';
import 'package:myapp_nhathero/transactions/components/body.dart';
import 'package:myapp_nhathero/transactions/components/bottom_drawer_navigation.dart';
class TransactionPage extends StatelessWidget{
  const TransactionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
     body: Body(),
      bottomNavigationBar: BottomDrawerNavigation(),
    );
  }

}