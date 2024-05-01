import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/donationNow/presentation/widgets/donation_now_view_body.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';

class DonationNowView extends StatelessWidget {
  const DonationNowView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor:AppColors.kBackgroundColor,
        body: const DonationNowViewBody(),
      ),
    );
  }
}
