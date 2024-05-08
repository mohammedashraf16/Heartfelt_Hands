import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/success/presentation/widgets/custom_success_payment_view.dart';

class PaymentSuccessView extends StatelessWidget {
  const PaymentSuccessView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(child:  Scaffold(
      body: CustomSuccessPaymentViewBody(),
    ));
  }
}
