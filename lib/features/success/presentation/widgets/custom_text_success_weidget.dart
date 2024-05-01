import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomTextSuccess extends StatelessWidget {
  const CustomTextSuccess({super.key, required this.textOne, required this.textTwo});
final String textOne;
final String textTwo;
  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 20),
        Text(textOne,style: CustomTextStyles.interStyle30,textAlign: TextAlign.center,),
        const SizedBox(height: 10),
        Text(textTwo ,style: CustomTextStyles.inter300Style20,textAlign: TextAlign.start,)
      ],
    );
  }
}