import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/donation_record/presentation/widgets/donation_record_view_body.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';

class DonationRecordView extends StatelessWidget {
  const DonationRecordView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        body: const DonationRecordViewBody(),
      ),
    );
  }
}

