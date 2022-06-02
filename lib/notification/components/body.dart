import 'package:flutter/material.dart';

import '../../size_config.dart';
import '../../time_bottom_config/time_bottom_config.dart';
class Body extends StatelessWidget{
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
              child:  Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 10),
                  child: Column(
                      children: [
              //          TimeBottomConfig.iconHead(Colors.black),
                        Expanded(
                          flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               const SizedBox(height: 5,),
                               searchField(context),
                               const SizedBox(height: 10,),
                               const Text('You can check your \n notification here',
                                 style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                             ],
                            )
                        ),
                        Expanded(
                          flex: 7,
                          child:  ListView(
                            children: [
                              Column(
                                children: [
                                  InformationProfile(urlImage: 'assets/images/Profile Image.png',textPerson: 'Kathryn Murphy',textPersonTransfer: 'Kathryn sent you \$20'),
                                  InformationProfile(urlImage: 'assets/images/Profile Image.png',textPerson: 'Kathryn Murphy',textPersonTransfer: 'Kathryn sent you \$20'),
                                  InformationProfile(urlImage: 'assets/images/Profile Image.png',textPerson: 'Kathryn Murphy',textPersonTransfer: 'Kathryn sent you \$20'),
                                  InformationProfile(urlImage: 'assets/images/Profile Image.png',textPerson: 'Kathryn Murphy',textPersonTransfer: 'Kathryn sent you \$20'),
                                  InformationProfile(urlImage: 'assets/images/Profile Image.png',textPerson: 'Kathryn Murphy',textPersonTransfer: 'Kathryn sent you \$20'),
                                  InformationProfile(urlImage: 'assets/images/Profile Image.png',textPerson: 'Kathryn Murphy',textPersonTransfer: 'Kathryn sent you \$20'),
                                  InformationProfile(urlImage: 'assets/images/Profile Image.png',textPerson: 'Kathryn Murphy',textPersonTransfer: 'Kathryn sent you \$20'),
                                  InformationProfile(urlImage: 'assets/images/Profile Image.png',textPerson: 'Kathryn Murphy',textPersonTransfer: 'Kathryn sent you \$20'),
                                  InformationProfile(urlImage: 'assets/images/Profile Image.png',textPerson: 'Kathryn Murphy',textPersonTransfer: 'Kathryn sent you \$20'),
                                  InformationProfile(urlImage: 'assets/images/Profile Image.png',textPerson: 'Kathryn Murphy',textPersonTransfer: 'Kathryn sent you \$20'),
                                  InformationProfile(urlImage: 'assets/images/Profile Image.png',textPerson: 'Kathryn Murphy',textPersonTransfer: 'Kathryn sent you \$20'),
                                  InformationProfile(urlImage: 'assets/images/Profile Image.png',textPerson: 'Kathryn Murphy',textPersonTransfer: 'Kathryn sent you \$20'),
                                  InformationProfile(urlImage: 'assets/images/Profile Image.png',textPerson: 'Kathryn Murphy',textPersonTransfer: 'Kathryn sent you \$20'),
                                  InformationProfile(urlImage: 'assets/images/Profile Image.png',textPerson: 'Kathryn Murphy',textPersonTransfer: 'Kathryn sent you \$20'),
                                  InformationProfile(urlImage: 'assets/images/Profile Image.png',textPerson: 'Kathryn Murphy',textPersonTransfer: 'Kathryn sent you \$20'),
                                  InformationProfile(urlImage: 'assets/images/Profile Image.png',textPerson: 'Kathryn Murphy',textPersonTransfer: 'Kathryn sent you \$20'),
                                ],
                              ),
                            ]
                          ),
                        ),

                      ]
                  )
              )
    );
  }

  Widget searchField(BuildContext context){
    return Container(
      alignment: Alignment.center,
      width: SizeConfig.screenWidth,
      height: 55,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: const TextField(
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: "Search",
            hintStyle: TextStyle(color: Colors.indigoAccent,fontSize: 20,fontWeight: FontWeight.bold),
            prefixIcon:  Icon(Icons.search, color: Colors.indigoAccent,size: 25,),
        ),
      ),
    );
  }

}

class InformationProfile extends StatelessWidget{

  String? urlImage;
  String? textPerson;
  String? textPersonTransfer;

  InformationProfile({this.urlImage,this.textPerson,this.textPersonTransfer,Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children:  [
            Image.asset(urlImage!),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
                Text(textPerson!,style: const TextStyle(color: Colors.black,fontSize: 18),),
                Text(textPersonTransfer!,style: const TextStyle(color: Colors.indigoAccent,fontSize: 18),),
              ],
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios_rounded, color: Colors.indigoAccent,),
          ],
        ),
        const Divider(
          color: Colors.grey,
          height: 20,
          thickness: 0.4,
        ),
      ],
    );
  }

}