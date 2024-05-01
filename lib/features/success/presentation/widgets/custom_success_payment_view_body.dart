import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/success/presentation/widgets/custom_container_success_payment.dart';
import 'package:heartfelt_hands/features/success/presentation/widgets/custom_text_success_weidget.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';

class CustomSuccessPaymentViewBody extends StatelessWidget {
  const CustomSuccessPaymentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child:CustomContainerSuccessPayment()),
        SliverToBoxAdapter(
          child: CustomTextSuccess(
            textOne: AppStrings.thanksForYourDonation,
            textTwo: AppStrings.bePartOfOurFamily,
          ),
        ),
      ],
    );
  }
}

