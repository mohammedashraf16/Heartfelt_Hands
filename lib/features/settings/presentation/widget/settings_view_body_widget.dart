import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/settings/presentation/widget/custom/_circle_avatar.dart';

class SettingsViewBodyWidget extends StatelessWidget {
  const SettingsViewBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CustomCircleAvatarSettingsView()),
      ],
    );
  }
}

class CustomContainerItemSettings extends StatelessWidget {
  const CustomContainerItemSettings(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.icon,
      required this.iconButton});

  final String title;
  final String subTitle;
  final Icon icon;
  final IconButton iconButton;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Row(
        children: [

        ],
      ),
    );
  }
}
