import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/success/presentation/widgets/custom_container_success_donation.dart';
import 'package:heartfelt_hands/features/success/presentation/widgets/custom_text_success_weidget.dart';

class SuccessDonationViewBody extends StatelessWidget {
  const SuccessDonationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CustomContainerSuccessDonation()),
        SliverToBoxAdapter(child: SizedBox(height: 30,)),
        SliverToBoxAdapter(child: CustomTextSuccess()),

      ],
    );
  }
}




