import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomContainerDonationNowView extends StatelessWidget {
  const CustomContainerDonationNowView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.kOffWhiteColor,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            children: [
              Image.asset(
                Assets.image4,
                height: 200,
                width: 330,
              ),
              Text(
                textAlign: TextAlign.center,
                AppStrings.start,
                style: CustomTextStyles.inter100Style16,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.share_outlined,color: Colors.white,size: 30,),
                    style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(AppColors.kGreenColor),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
