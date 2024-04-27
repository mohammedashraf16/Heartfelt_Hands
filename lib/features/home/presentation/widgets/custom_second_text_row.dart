import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomSecondTextRow extends StatelessWidget {
  const CustomSecondTextRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.remaining,
                style: CustomTextStyles.inter800Style20,
                maxLines: 2,
              ),
              Text(
                AppStrings.amount,
                style: CustomTextStyles.inter800Style20,
                maxLines: 2,
              ),
            ],
          ),
        ),
        const Spacer(),
        Container(
          height: 37,
          width: 95,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.kGreenColor,
          ),
          child: Text(
            textAlign: TextAlign.center,
            AppStrings.donateNow,
            style: CustomTextStyles.inter800Style20
                .copyWith(color: Colors.white),
          ),
        ),
        const SizedBox(width: 5,),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            width: 36,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.kGreenColor,
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}