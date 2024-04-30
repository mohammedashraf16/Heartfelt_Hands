import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/home/presentation/widgets/custom_category_item_widget.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';

class CustomCategories extends StatelessWidget {
  const CustomCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomCategoryItem(
          onTap: () {

          },
            image: Assets.imageCategory3,
            title: AppStrings.ambassadors),
        const CustomCategoryItem(
            image: Assets.imageCategory2,
            title: AppStrings.partners),
        const CustomCategoryItem(
            image: Assets.imageCategory1,
            title: AppStrings.gratePhilanthropists),
      ],
    );
  }
}