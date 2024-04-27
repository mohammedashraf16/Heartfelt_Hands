import 'package:flutter/material.dart';
import 'package:heartfelt_hands/constants/custom_row_app_bar.dart';
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
            const CustomWarningMessage(
              height: 54,
              text: AppStrings.doNotHavePaymentCard,
              image: Assets.imageWarning,
            ),
            CustomContainerToAddItem(
              height: 54,
              text: AppStrings.addNewCard,
              iconButton: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.add,
                    color: Colors.black,
                  )),
            ),
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
      required this.iconButton,
      this.onPressed, required this.height});

  final String text;
  final IconButton iconButton;
  final Function()? onPressed;
final double height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15,top: 285),
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
            IconButton(onPressed: onPressed, icon: iconButton),
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

class CustomWarningMessage extends StatelessWidget {
  const CustomWarningMessage(
      {super.key, required this.text, required this.image, required this.height});

  final String text;
  final String image;
final double height;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15),
      child: Container(
        height: height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.kLightBlueColor,
          borderRadius: BorderRadius.circular(28),
        ),
        child: Row(
          children: [
            const SizedBox(width: 10),
            Image.asset(
              image,
              height: 32,
              width: 32,
            ),
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
