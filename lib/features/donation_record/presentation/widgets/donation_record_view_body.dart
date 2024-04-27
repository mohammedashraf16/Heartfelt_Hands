import 'package:flutter/material.dart';

import 'custom_stack_donation_record.dart';
class DonationRecordViewBody extends StatelessWidget {
  const DonationRecordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomStackDonationRecord(),
        )
      ],
    );
  }
}



