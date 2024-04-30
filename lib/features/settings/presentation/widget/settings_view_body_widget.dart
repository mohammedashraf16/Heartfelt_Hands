import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/settings/presentation/widget/custom_app_bar_settings_view.dart';
import 'package:heartfelt_hands/features/settings/presentation/widget/custom_container_item_settings.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';

class SettingsViewBodyWidget extends StatelessWidget {
  const SettingsViewBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CustomAppBarSettingsView()),
        SliverToBoxAdapter(child: SizedBox(height: 60)),
        SliverToBoxAdapter(
          child: CustomContainerItemSettings(text: AppStrings.privacyPolicy)),
         SliverToBoxAdapter(child: CustomContainerItemSettings(text:AppStrings.notification)),
         SliverToBoxAdapter(child: CustomContainerItemSettings(text: AppStrings.country)),
         SliverToBoxAdapter(child: CustomContainerItemSettings(text: AppStrings.commonQuestions)),
         SliverToBoxAdapter(child: CustomContainerItemSettings(text: AppStrings.communicationCenter)),
      ],
    );
  }
}


