import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/contribution/presentation/widgets/custom_app_bar_contribution_view.dart';
import 'package:heartfelt_hands/features/contribution/presentation/widgets/custom_contact_container.dart';
import 'package:heartfelt_hands/features/contribution/presentation/widgets/custom_container_payment_card_widget.dart';
import 'package:heartfelt_hands/features/contribution/presentation/widgets/custom_donation_details_container.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';


class ContributionViewBody extends StatelessWidget {
  const ContributionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: CustomAppBarContributionView()),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              AppStrings.satisfyHunger,
              style: CustomTextStyles.interStyle24.copyWith(
                fontSize: 30,
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(child: CustomContactContainer()),
        const SliverToBoxAdapter(child: CustomDonationDetailsContainer()),
        const SliverToBoxAdapter(child: CustomContainerPaymentMethod()),
      ],
    );
  }
}








