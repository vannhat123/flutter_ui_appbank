import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../size_config.dart';


class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    required this.errors,
  }) : super(key: key);

  final List<String?> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length, (index) => formErrorText(error: errors[index]!),),
    );
  }

  Column formErrorText({required String error}) {
    return Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                "assets/images/Error.svg",
                height: 20,
                width: 20,
                // height: getProportionateScreenWidth(14),
                // width: getProportionateScreenWidth(14),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(error, style: const TextStyle(color: Colors.red),),
            ],
          ),
          const SizedBox(height: 4,),
        ]
    );
  }
}
