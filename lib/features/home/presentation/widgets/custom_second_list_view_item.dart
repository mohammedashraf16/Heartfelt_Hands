import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/home/presentation/widgets/custom_second_text_row.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomSecondListViewItem extends StatelessWidget {
  const CustomSecondListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      width: 410,
      height: 170,
      decoration: BoxDecoration(
        color: const Color(0xffEDF6F4),
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(blurRadius: 6),
        ],
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                fit: BoxFit.fitWidth,
                Assets.imagesDonate2,
                width: 400,
                height: 155,
              ),
              Image.asset(
                fit: BoxFit.fitWidth,
                Assets.imagesDonate3,
                width: 400,
                height: 30,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                AppStrings.providingMeals,
                style: CustomTextStyles.inter800Style20,
              ),
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          const CustomSecondTextRow()
        ],
      ),
    );
  }
}