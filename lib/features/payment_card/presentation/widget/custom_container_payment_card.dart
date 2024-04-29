import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/payment_card/presentation/widget/custom_container_to%20add_item.dart';
import 'package:heartfelt_hands/features/payment_card/presentation/widget/custom_warning_message.dart';

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