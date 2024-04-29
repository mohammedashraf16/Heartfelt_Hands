import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomButtonSignUpScreen extends StatelessWidget {
  const CustomButtonSignUpScreen(
      {super.key, required this.onTap, required this.color, required this.text});
  final void Function() onTap;
  final Color? color;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 47, left: 36, right: 36, bottom: 22),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(25)),
              gradient: LinearGradient(
                  colors: [Color(0xffFC6076), Color(0xffFF9A44)])),
          height: 55,
          width: double.infinity,
          child: Text(
           text,
            style: CustomTextStyles.interStyle24.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
