import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/profile/presentation/widgets/profile_view_body.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        body: const ProfileViewBody(),
      ),
    );
  }
}
