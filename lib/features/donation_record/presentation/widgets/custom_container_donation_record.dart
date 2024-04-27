import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomContainerDonationRecord extends StatelessWidget {
  const CustomContainerDonationRecord({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, left: 16, right: 17),
      child: Container(
        width: double.infinity,
        height: 690,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26), color: Colors.white),
        child:  Padding(
          padding: const EdgeInsets.only(top: 14.0, right: 22),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Center(
                child: Image(
                  image: AssetImage(Assets.image14),
                  height: 201,
                  width: 255,
                ),
              ),
              Text(AppStrings.doNotHaveAnyDonation,style: CustomTextStyles.inter800Style20,)
            ],
          ),
        ),
      ),
    );
  }
}