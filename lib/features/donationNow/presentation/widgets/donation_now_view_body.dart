import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/auth/presentation/sign_up/widgets/custom_sign_up_screen.dart';
import 'package:heartfelt_hands/features/auth/presentation/sign_up/widgets/custom_text_form_field.dart';
import 'package:heartfelt_hands/features/donationNow/presentation/views/order_receipt_details_view.dart';
import 'package:heartfelt_hands/features/donationNow/presentation/widgets/custom_container_food_allergens.dart';
import 'package:heartfelt_hands/features/donationNow/presentation/widgets/custom_donation_now_card.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'package:page_transition/page_transition.dart';

class DonationNowViewBody extends StatelessWidget {
  const DonationNowViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [

        const SliverToBoxAdapter(child: CustomDonationNowCard()),
        SliverToBoxAdapter(
          child: CustomTextFormFieldWidget(
            color: const Color(0xffE7E7E7),
            label: AppStrings.start,
            iconButton: null,
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.minimize,
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: CustomTextFormFieldWidget(
            color: const Color(0xffE7E7E7),
            label: AppStrings.start,
            iconButton: null,
            suffixIcon: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.upload,
                color: Colors.white,
              ),
              style: ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll(AppColors.kGreenColor),
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: CustomTextFormFieldWidget(
            color: Color(0xffE7E7E7),
            label: AppStrings.descriptionOfMeal,
            maxLines: 6,
            suffixIcon: null,
            iconButton: null,
          ),
        ),
        const SliverToBoxAdapter(child: CustomContainerFoodAllergens()),
        SliverToBoxAdapter(
            child: CustomButtonSignUpScreen(
          onTap: () {
            Navigator.push(
              context,
              PageTransition(
                child: const OrderReceiptDetailsView(),
                type: PageTransitionType.fade,
                duration: const Duration(seconds: 1),
              ),
            );
          },
          color: null,
          text: AppStrings.next,
        ))
      ],
    );
  }
}
