import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/periodic_donation/presentation/widgets/custom_stack_periodic_donation.dart';

class PeriodicDonationViewBody extends StatelessWidget {
  const PeriodicDonationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomStackPeriodicDonation(),
        )
      ],
    );
  }
}

