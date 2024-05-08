import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/shop/presentation/widgets/custom_second_payment_view_body.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';

class SecondPaymentView extends StatelessWidget {
  const SecondPaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor:AppColors.kLightGreenColor,
        body: const SecondPaymentViewBody(),
      ),
    );
  }
}