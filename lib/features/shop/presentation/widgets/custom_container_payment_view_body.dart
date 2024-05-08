import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/auth/presentation/sign_up/widgets/custom_sign_up_screen.dart';
import 'package:heartfelt_hands/features/auth/presentation/sign_up/widgets/custom_text_form_field.dart';
import 'package:heartfelt_hands/features/contribution/presentation/widgets/custom_row_card_widget.dart';
import 'package:heartfelt_hands/features/shop/presentation/views/payment_success_view.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';
import 'package:page_transition/page_transition.dart';

class CustomContainerPaymentViewBody extends StatelessWidget {
  const CustomContainerPaymentViewBody({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 1000,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.kColor
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                textAlign: TextAlign.start,
                title,
                style: CustomTextStyles.interStyle24.copyWith(color: Colors.black),
              ),
              const SizedBox(height: 30),
              Text(
                subTitle,
                style: CustomTextStyles.inter100Style16,
              ),
              const SizedBox(height: 30),
              Text(
                AppStrings.paymentMethod,
                style: CustomTextStyles.interStyle30,
              ),
              const Padding(
                padding:  EdgeInsets.symmetric(vertical: 25.0),
                child: CustomRowCard(),
              ),
              CustomTextFormFieldWidget(
                label: AppStrings.cardNumber,
                iconButton: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.credit_card),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: CustomTextFormFieldWidget(
                      label: AppStrings.cvc,
                      iconButton: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.calendar_view_day_rounded),
                      ),
                    ),
                  ),
                  Expanded(
                    child: CustomTextFormFieldWidget(
                      label: AppStrings.birthDay,
                      iconButton: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.date_range),
                      ),
                    ),
                  ),
                ],
              ),
              CustomTextFormFieldWidget(
                label: AppStrings.postalCode,
                iconButton: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.code),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: CustomButtonSignUpScreen(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: const PaymentSuccessView(),
                          type: PageTransitionType.topToBottom),
                    ).then((value) => (value) {
                      Navigator.pop(context);
                    });
                  },
                  color: const Color(0xffFF9A44),
                  text: AppStrings.confirm,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}