import 'package:flutter/material.dart';
import 'package:myapp_nhathero/size_config.dart';


class SignInButton extends StatelessWidget {
  const SignInButton({
    Key? key,
    this.text,
    this.press,
    this.colorButtonText,
    this.colorBackGroundButton,
    this.imageUrl,
  }) : super(key: key);
  final String? text;
  final Function? press;
  final Color? colorButtonText;
  final Color? colorBackGroundButton;
  final String? imageUrl;
  static const IconData arrow_forward = IconData(0xe09b, fontFamily: 'MaterialIcons', matchTextDirection: true);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 70,
        child: TextButton(
            style: TextButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              primary: Colors.black,
              backgroundColor: colorBackGroundButton!,
              side: const BorderSide(color: Colors.indigoAccent),
            ),
            onPressed: press as void Function()?,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Text(text!,
                    style: TextStyle(
                      color: colorButtonText! ,
                      fontSize: 22,
                    ),
                  ),
                  const Spacer(),
                  Image.asset(imageUrl!,width: 22,color: colorButtonText!,),
                ],
              ),
            )
        )
    );
  }
}
