import 'package:flutter/material.dart';
import 'package:heartfelt_hands/constants/custom_row_app_bar.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';

class PaymentCardViewBody extends StatelessWidget {
  const PaymentCardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomScrollView(
      slivers: [
       SliverToBoxAdapter(child: CustomStackPaymentCard(),)
      ],
    );
  }
}


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
          title:AppStrings.paymentCards,
        ),
        CustomContainerPaymentCard()
      ],
    );
  }
}

class CustomContainerPaymentCard extends StatelessWidget {
  const CustomContainerPaymentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 80, left: 16, right: 17),
      child: Container(
        width: double.infinity,
        height: 690,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(26), color: Colors.white),
        child: Column(
          children: [

          ],
        ),
      ),
    );
  }
}
class CustomWarningMessage extends StatelessWidget {
  const CustomWarningMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 301,
      width: 54,
    );
  }
}


