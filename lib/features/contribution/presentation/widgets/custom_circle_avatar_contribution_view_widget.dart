import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';

class CustomCircleAvatarContributionView extends StatelessWidget {
  const CustomCircleAvatarContributionView({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.kBackgroundColor,
      radius: 40,
      child: Image.asset(
        image,
        height: 200,
        width: 100,
      ),
    );
  }
}