import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/settings/presentation/widget/custom_row_app_bar_settings_view.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';

class CustomAppBarSettingsView extends StatelessWidget {
  const CustomAppBarSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0,2.5),
      children: [
        Container(
            alignment: Alignment.topLeft,
            height: 150,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color(0xffC79081), Color(0xffDFA579)]),
            ),
            child: const CustomRowAppBarSettingViewWidget()),
        CircleAvatar(
          backgroundColor: Colors.white,
          radius: 45,
          child: Image.asset(Assets.imageGear),
        )
      ],
    );
  }
}