import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomRowText extends StatelessWidget {
  const CustomRowText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 17.0,bottom: 10,left: 10 ,right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            AppStrings.donationChance,
            style: CustomTextStyles.inter800Style20,
          ),
          Row(
            children: [
              Text(
                AppStrings.more,
                style: CustomTextStyles.inter800Style20,
              ),
              Image.asset(Assets.imagesVector1,width:23 ,height: 19,),
            ],
          )
        ],
      ),
    );
  }
}
