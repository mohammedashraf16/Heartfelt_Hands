import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/payment_card/presentation/widget/payment_card_view_body.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';

class PaymentCardView extends StatelessWidget {
  const PaymentCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        body:const PaymentCardViewBody(),
      ),
    );
  }
}
