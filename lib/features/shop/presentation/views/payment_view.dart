import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/shop/presentation/widgets/payment_view_body.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kLightGreenColor,
        body: const PaymentViewBody(),
      ),
    );
  }
}
