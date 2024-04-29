import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/success/presentation/widgets/success_donation_view_body.dart';

class SuccessDonationView extends StatelessWidget {
  const SuccessDonationView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body:SuccessDonationViewBody(),
      ),
    );
  }
}
