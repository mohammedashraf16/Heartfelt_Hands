import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/contribution/presentation/widgets/custom_rate_container.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomDonationDetailsContainer extends StatelessWidget {
  const CustomDonationDetailsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 600,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.kLightBlueColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomRateContainer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Text(
                  AppStrings.numberOfMeals,
                  style: CustomTextStyles.inter300Style20,
                ),
              ),

              Text(
                AppStrings.donationDetailsOne,
                style: CustomTextStyles.inter300Style20,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: Text(
                  AppStrings.donationDetailsTwo,
                  style: CustomTextStyles.inter300Style20,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:50.0),
                child: Text(
                  textAlign: TextAlign.start,
                  AppStrings.bankAccount,
                  style: CustomTextStyles.inter300Style20,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}