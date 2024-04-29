import 'package:flutter/material.dart';
import 'package:heartfelt_hands/constants/custom_row_app_bar.dart';
import 'package:heartfelt_hands/features/payment_card/presentation/widget/custom_warning_message.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class PaymentCardViewBody extends StatelessWidget {
  const PaymentCardViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomStackPaymentCard(),
        )
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

class CustomContainerPaymentCard extends StatelessWidget {
  const CustomContainerPaymentCard(
      {super.key,
      required this.textOne,
      required this.imageOne,
      required this.textTwo,
      required this.icon,
      required this.height,
      required this.heightTwo});

  final String textOne;
  final String textTwo;
  final String imageOne;
  final IconData icon;
  final double height;
  final double heightTwo;

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
            CustomWarningMessage(
              height: height,
              text: textOne,
              image: imageOne,
            ),
            CustomContainerToAddItem(
              icon: icon,
              height: heightTwo,
              text: textTwo,
            )
          ],
        ),
      ),
    );
  }
}

class CustomContainerToAddItem extends StatelessWidget {
  const CustomContainerToAddItem(
      {super.key,
      required this.text,
      required this.icon,
      this.onPressed,
      required this.height});

  final String text;
  final IconData icon;
  final Function()? onPressed;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15, top: 285),
      child: Container(
        width: double.infinity,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: AppColors.kDeepBlueColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 10),
            Icon(icon,size: 30,),
            const SizedBox(width: 10),
            Text(
              text,
              style: CustomTextStyles.inter800Style20.copyWith(
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
