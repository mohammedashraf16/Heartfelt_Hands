import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomWarningMessage extends StatelessWidget {
  const CustomWarningMessage({super.key,
    required this.text,
    required this.image,
    required this.height});

  final String text;
  final String image;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
      child: Container(
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.kLightBlueColor,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Row(
          children: [
            const SizedBox(width: 10),
            Image.asset(
              image,
              height: 32,
              width: 32,
            ),
            const SizedBox(width: 10),
            Text(
              text,
              style: CustomTextStyles.inter800Style20.copyWith(
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
