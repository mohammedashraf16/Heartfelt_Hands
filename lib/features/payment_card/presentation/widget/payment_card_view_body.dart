import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/payment_card/presentation/widget/custom_stack_payment_card.dart';

class PaymentCardViewBody extends StatelessWidget {
  const PaymentCardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomStackPaymentCard(),
        )
      ],
    );
  }
}





