import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/donationNow/presentation/widgets/custom_container_housing_type.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';

class CustomRowHousingType extends StatelessWidget {
  const CustomRowHousingType({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomContainerHousingType(
          icon: Icons.home_outlined,
          text: AppStrings.house,
        ),
        CustomContainerHousingType(
          icon: Icons.apartment,
          text: AppStrings.apartment,
        ),
        CustomContainerHousingType(
          icon: Icons.local_post_office_outlined,
          text: AppStrings.office,
        ),
      ],
    );
  }
}