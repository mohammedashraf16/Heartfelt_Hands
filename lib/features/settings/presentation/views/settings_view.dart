import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/settings/presentation/widget/settings_view_body_widget.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.kBackgroundColor,
          title: Text(
            AppStrings.settings,
            style: CustomTextStyles.inter800Style20.copyWith(
              fontSize: 25,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
        ),
        backgroundColor: AppColors.kBackgroundColor,
        body: const SettingsViewBodyWidget(),
      ),
    );
  }
}
