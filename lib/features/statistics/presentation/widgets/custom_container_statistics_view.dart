import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/statistics/presentation/widgets/custom_text_and_circle_avatar.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomContainerStatisticsView extends StatelessWidget {
  const CustomContainerStatisticsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, left: 16, right: 17),
      child: Container(
        width: double.infinity,
        height: 690,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.only(top: 14.0, right: 22),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    textAlign: TextAlign.start,
                    AppStrings.yourDonations,
                    style: CustomTextStyles.interStyle45
                        .copyWith(color: AppColors.kDeepGreenColor),
                  ),
                ],
              ),
              const SizedBox(height: 29),
              const CustomTextAndCircleAvatar(
                image: Assets.imageEllipse34,
                subTitle: AppStrings.numberOfTimeDonation,
                number: AppStrings.numberOfDonation,
              ),
              const SizedBox(height: 70),
              const CustomTextAndCircleAvatar(
                image: Assets.imageEllipse35,
                subTitle: AppStrings.totalAmounts,
                number: AppStrings.theAmount,
              ),
              const SizedBox(height: 70),
              const CustomTextAndCircleAvatar(
                image: Assets.imageEllipse36,
                subTitle: AppStrings.totalNumberOfPoints,
                number: AppStrings.numberOfDonation,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
