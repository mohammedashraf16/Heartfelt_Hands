import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomContainerPayment extends StatelessWidget {
  const CustomContainerPayment({super.key, required this.text, this.onTap});

  final String text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap ,
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(77),
          gradient: const LinearGradient(
            colors: [
              Color(0xffE6B980),
              Color(0xffEACDA3),
            ],
          ),
        ),
        child: Text(
          textAlign: TextAlign.center,
          text,
          style: CustomTextStyles.inter800Style20,
        ),
      ),
    );
  }
}
