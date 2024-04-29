import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomContactContainer extends StatelessWidget {
  const CustomContactContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 52,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xffFDFCFB),
            Color(0xffE2D1C3),
          ],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            AppStrings.contactNumber,
            style: CustomTextStyles.inter100Style20,
          ),
          const Icon(Icons.share_outlined,size: 45,)
        ],
      ),
    );
  }
}