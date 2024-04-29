import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/periodic_donation/presentation/widgets/periodic_donation_view_body.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';

class PeriodicDonationView extends StatelessWidget {
  const PeriodicDonationView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor:AppColors.kBackgroundColor,
        body: const PeriodicDonationViewBody(),
      ),
    );
  }
}
