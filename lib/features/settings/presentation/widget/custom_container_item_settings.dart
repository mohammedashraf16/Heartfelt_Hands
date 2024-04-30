import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomContainerItemSettings extends StatelessWidget {
  const CustomContainerItemSettings(
      {super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 14),
      child: Container(
        width: double.infinity,
        height: 65,
        decoration: BoxDecoration(
          boxShadow: List.filled(DateTime.december, const BoxShadow(color: Colors.black38)),
          borderRadius: BorderRadius.circular(4),
          color: AppColors.kLightBrownColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                text,
                style: CustomTextStyles.interBoldStyle24.copyWith(
                  color: AppColors.kDeepGrayColor,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Image(image: AssetImage(Assets.imageCareLeft),height: 32,),
            ),
          ],
        ),
      ),
    );
  }
}