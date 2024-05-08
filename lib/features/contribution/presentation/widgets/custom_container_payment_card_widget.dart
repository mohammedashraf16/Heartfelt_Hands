import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/auth/presentation/sign_up/widgets/custom_sign_up_screen.dart';
import 'package:heartfelt_hands/features/auth/presentation/sign_up/widgets/custom_text_form_field.dart';
import 'package:heartfelt_hands/features/contribution/presentation/widgets/custom_row_card_widget.dart';
import 'package:heartfelt_hands/features/success/presentation/views/success_donation_view.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';
import 'package:page_transition/page_transition.dart';

class CustomContainerPaymentMethod extends StatelessWidget {
  const CustomContainerPaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 600,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.kBackgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
              Text(
                AppStrings.paymentMethod,
                style: CustomTextStyles.interBoldStyle24,
              ),
              const SizedBox(height: 10),
              const CustomRowCard(),
              const SizedBox(
                height: 50,
              ),
              CustomTextFormFieldWidget(
                label: AppStrings.cardNumber,
                iconButton: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.credit_card),
                ),
              ),
              CustomTextFormFieldWidget(
                label: AppStrings.postalCode,
                iconButton: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.code),
                ),
              ),
              CustomButtonSignUpScreen(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: const SuccessDonationView(),
                        type: PageTransitionType.topToBottom),
                  ).then((value) => (value) {
                    Navigator.pop(context);
                  });
                },
                color: const Color(0xffFF9A44),
                text: AppStrings.confirm,
              )
            ],
          ),
        ),
      ),
    );
  }
}