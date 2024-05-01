import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/shop/presentation/widgets/custom_app_bar_shop.dart';
import 'package:heartfelt_hands/features/shop/presentation/widgets/custom_container_payment_view_body.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';

class SecondPaymentViewBody extends StatelessWidget {
  const SecondPaymentViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomAppBarShopView(
            imageOne: Assets.shape,
            title: AppStrings.payment,
          ),
        ),
        SliverToBoxAdapter(
          child: CustomContainerPaymentViewBody(
              title: AppStrings.donationTwo,
              subTitle: AppStrings.paymentDonationDetailsTwo),
        )
      ],
    );
  }
}
