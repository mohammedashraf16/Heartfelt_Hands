import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/auth/presentation/sign_up/widgets/custom_check_box.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class TermsAndCondition extends StatelessWidget {
  const TermsAndCondition({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CustomCheckBox(),
        Text(
          AppStrings.termsAndCondition,
          style: CustomTextStyles.inter100Style20,
        )
      ],
    );
  }
}
