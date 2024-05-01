import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/success/presentation/widgets/custom_success_payment_view_body.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';

class CustomSuccessPaymentView extends StatelessWidget {
  const CustomSuccessPaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
        backgroundColor: AppColors.kColor,
        body:const CustomSuccessPaymentViewBody(),
      ),
    );
  }
}
