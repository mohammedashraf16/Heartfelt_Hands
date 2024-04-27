import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/onboarding/data/models/onboarding_model.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPageIndicator extends StatelessWidget {
  const CustomSmoothPageIndicator({super.key,required this.controller});
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: onBoardingData.length,
      effect: ExpandingDotsEffect(
        activeDotColor: AppColors.kGreenColor,
        dotWidth: 12,
        dotHeight: 15,
      ),
    );
  }
}