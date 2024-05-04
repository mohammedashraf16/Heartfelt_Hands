import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomTextSuccess extends StatelessWidget {
  const CustomTextSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text(AppStrings.yourGoodnessHasArrived,style: CustomTextStyles.interStyle30,),
        const SizedBox(height: 10),
        Text(AppStrings.bePartOfOurFamily ,style: CustomTextStyles.inter300Style20,)
      ],
    );
  }
}