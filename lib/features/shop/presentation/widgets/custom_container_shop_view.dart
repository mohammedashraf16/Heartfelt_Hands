import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/shop/presentation/views/second_payment_view.dart';
import 'package:heartfelt_hands/features/shop/presentation/views/third_payment_view.dart';
import 'package:heartfelt_hands/features/shop/presentation/widgets/custom_container_payment_widget.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';
import 'package:page_transition/page_transition.dart';

class CustomContainerShopView extends StatelessWidget {
  const CustomContainerShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Container(
        width: double.infinity,
        height: 820,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: AppColors.kColor,
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      AppStrings.everyoneJoinHands,
                      style: CustomTextStyles.inter100Style20.copyWith(
                        color: AppColors.kDeepBrownColor,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      Assets.image12,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                AppStrings.textDetailsOne,
                style: CustomTextStyles.inter300Style20
                    .copyWith(color: AppColors.kDeepGrayColor),
              ),
              const SizedBox(height: 60),
              Text(
                AppStrings.textDetailsThree,
                style: CustomTextStyles.inter300Style20
                    .copyWith(color: AppColors.kDeepGrayColor),
              ),
              const SizedBox(height: 25),
              CustomContainerPayment(
                text: AppStrings.donationOne,
                onTap: () {
                  Navigator.push(
                    context,
                    PageTransition(
                      child: const SecondPaymentView(),
                      type: PageTransitionType.fade,
                      duration: const Duration(seconds: 1),
                    ),
                  );
                },
              ),
              const SizedBox(height: 25),
               CustomContainerPayment(text: AppStrings.donationTwo,onTap: () {
                 Navigator.push(
                   context,
                   PageTransition(
                     child: const SecondPaymentView(),
                     type: PageTransitionType.fade,
                     duration: const Duration(seconds: 1),
                   ),
                 );
              },),
              const SizedBox(height: 25),
               CustomContainerPayment(text: AppStrings.donationThree,onTap: (){
                 Navigator.push(
                   context,
                   PageTransition(
                     child: const ThirdPaymentView(),
                     type: PageTransitionType.fade,
                     duration: const Duration(seconds: 1),
                   ),
                 );
              },),
            ],
          ),
        ),
      ),
    );
  }
}
