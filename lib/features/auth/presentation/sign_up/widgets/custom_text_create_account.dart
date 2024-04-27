import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomTextCreateAccount extends StatelessWidget {
  const CustomTextCreateAccount({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Text(
        text,
        style: CustomTextStyles.inter800Style20.copyWith(
          fontSize: 45,
        ),
      ),
    );
  }
}