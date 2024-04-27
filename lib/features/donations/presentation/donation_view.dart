import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';


class DonationsView extends StatelessWidget {
  const DonationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: const Center(
        child: Text("Donations View"),
      ),
    );
  }
}
