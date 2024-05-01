import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  const CustomTextFormFieldWidget(
      {super.key, required this.label, this.onChanged, this.onFieldSubmitted, required this.icon, this.obscureText, this.suffixIcon});
  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final Widget? icon;
  final String label;
  final bool? obscureText;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0, left: 20, top: 39),
      child: SizedBox(
        width: double.infinity,
        height: 70,
        child: TextFormField(
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          obscureText: obscureText ?? false,
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return "Field is required";
            } else {
              return null;
            }
          },
          cursorColor: Colors.black,
          decoration: InputDecoration(
            suffixIcon: suffixIcon,
            prefixIcon: icon,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(width: 4, color: Colors.grey)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            filled: true,
            fillColor: AppColors.kGrayColor,
            label: Text(label),
            labelStyle: CustomTextStyles.interStyle24,
          ),
        ),
      ),
    );
  }
}
