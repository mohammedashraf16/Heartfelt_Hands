import 'package:flutter/material.dart';
import 'package:heartfelt_hands/constants/custom_row_app_bar.dart';
import 'package:heartfelt_hands/features/payment_card/presentation/widget/custom_container_payment_card.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';


class CustomStackPaymentCard extends StatelessWidget {
  const CustomStackPaymentCard({super.key});

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
          title: AppStrings.paymentCards,
        ),
        CustomContainerPaymentCard(
          height: 54,
          heightTwo: 54,
          textOne: AppStrings.doNotHavePaymentCard,
          imageOne: Assets.imageWarning,
          textTwo: AppStrings.addNewCard,
          icon: Icons.add,
        )
      ],
    );
  }
}