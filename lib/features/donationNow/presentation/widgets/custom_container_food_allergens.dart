import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/auth/presentation/sign_up/widgets/custom_check_box.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomContainerFoodAllergens extends StatelessWidget {
  const   CustomContainerFoodAllergens({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(20),
      elevation: 1,
      color: const Color(0xffE7E7E7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.allergens,
            style: CustomTextStyles.inter300Style20,
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              const CustomCheckBox(),
              Text(
                AppStrings.milk,
                style: CustomTextStyles.inter100Style16,
              ),
              const SizedBox(width: 60),
              const CustomCheckBox(),
              Text(
                AppStrings.soyBeans,
                style: CustomTextStyles.inter100Style16,
              ),
            ],
          ),   Row(
            children: [
              const CustomCheckBox(),
              Text(
                AppStrings.eggs,
                style: CustomTextStyles.inter100Style16,
              ),
              const SizedBox(width: 60),
              const CustomCheckBox(),
              Text(
                AppStrings.wheat,
                style: CustomTextStyles.inter100Style16,
              ),
            ],
          ),   Row(
            children: [
              const CustomCheckBox(),
              Text(
                AppStrings.peanut,
                style: CustomTextStyles.inter100Style16,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
