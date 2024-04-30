import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/settings/presentation/widget/settings_view_body_widget.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';


class SettingsView extends StatelessWidget {
  const SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        body: const SettingsViewBodyWidget(),
      ),
    );
  }
}
