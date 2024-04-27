import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomProfileNameTextWidget extends StatelessWidget {
  const CustomProfileNameTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      AppStrings.createAccount,
      style: CustomTextStyles.inter800Style20,
    );
  }
}
