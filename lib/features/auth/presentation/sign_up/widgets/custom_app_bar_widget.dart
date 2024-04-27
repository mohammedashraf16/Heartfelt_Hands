import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';

class CustomAppBarSignUpView extends StatelessWidget {
  const CustomAppBarSignUpView({super.key, required this.image});

  final String image;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(image),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 22.0, left: 23),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 51,
                  height: 48,
                  decoration: BoxDecoration(
                      color: AppColors.kLightPinkColor,
                      borderRadius: BorderRadius.circular(11)),
                  child: const Icon(
                    Icons.arrow_forward_ios,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}