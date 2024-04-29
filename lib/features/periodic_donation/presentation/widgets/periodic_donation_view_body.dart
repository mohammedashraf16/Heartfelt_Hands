import 'package:flutter/material.dart';
import 'package:heartfelt_hands/constants/custom_row_app_bar.dart';
import 'package:heartfelt_hands/features/payment_card/presentation/widget/payment_card_view_body.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';

class PeriodicDonationViewBody extends StatelessWidget {
  const PeriodicDonationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomStackPeriodicDonation(),
        )
      ],
    );
  }
}

class CustomStackPeriodicDonation extends StatelessWidget {
  const CustomStackPeriodicDonation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.topLeft,
      children: [
        Column(
          children: [
            Image(image: AssetImage(Assets.imageVector4)),
            Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Image(
                image: AssetImage(Assets.imageVector5),
              ),
            )
          ],
        ),
        CustomRowAppBar(
          title: AppStrings.periodicDonation,
        ),
        CustomContainerPaymentCard(
          height: 130,
          heightTwo: 54,
          textOne: AppStrings.periodicDonationService,
          imageOne: Assets.imageWarning,
          textTwo: AppStrings.addNewCard,
          icon: Icons.add,
        )
      ],
    );
  }
}
