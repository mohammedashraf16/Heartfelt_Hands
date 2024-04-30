import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomRowAppBarSettingViewWidget extends StatelessWidget {
  const CustomRowAppBarSettingViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 170.0),
          child: Text(
            AppStrings.settings,
            style: CustomTextStyles.interBoldStyle24.copyWith(
              color: Colors.white,
            ),
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {
            Navigator.canPop(context);
          },
          icon: Image.asset(
            Assets.imageCareLeft,
            height: 32,
            width: 41,
          ),
        ),
      ],
    );
  }
}
