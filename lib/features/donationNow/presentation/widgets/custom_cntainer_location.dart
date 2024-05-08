import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomContainerLocation extends StatelessWidget {
  const CustomContainerLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 52,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        border: Border.all(color: Colors.green),
      ),
      child:  Row(
        children: [
          const SizedBox(width: 10),
          const Icon(
            Icons.location_on_outlined,
            color: Colors.red,
            size: 30,
          ),
          const SizedBox(width: 10),
          Text(AppStrings.mubarakCity,style: CustomTextStyles.interStyle24,),
          const Spacer(),
          Text(AppStrings.change,style: CustomTextStyles. interStyle24,),
        ],
      ),
    );
  }
}
