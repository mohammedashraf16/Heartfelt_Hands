import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/shop/presentation/widgets/third_payment_view_body.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';

class ThirdPaymentView extends StatelessWidget {
  const ThirdPaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.kLightGreenColor,
      body:const ThirdPaymentViewBody(),
    );
  }
}
