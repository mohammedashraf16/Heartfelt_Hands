import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomTextFormFieldWidget extends StatelessWidget {
  const CustomTextFormFieldWidget({
    super.key,
    required this.label,
    this.onChanged,
    this.onFieldSubmitted,
    required this.iconButton,
    this.maxLines = 1,
    this.suffixIcon,
    this.color,
  });

  final void Function(String)? onChanged;
  final void Function(String)? onFieldSubmitted;
  final IconButton? iconButton;
  final IconButton? suffixIcon;
  final String label;
  final int maxLines;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
      child: SizedBox(
        width: double.infinity,
        child: TextFormField(
          maxLines: maxLines,
          onChanged: onChanged,
          onFieldSubmitted: onFieldSubmitted,
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return "Field is required";
            } else {
              return null;
            }
          },
          cursorColor: Colors.black,
          decoration: InputDecoration(
            prefixIcon: iconButton,
            suffixIcon: suffixIcon,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(width: 4, color: Colors.grey)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
            filled: true,
            hintMaxLines: maxLines,
            fillColor: color,
            label: Text(
              label,
              textAlign: TextAlign.start,
            ),
            labelStyle: CustomTextStyles.interStyle24,
          ),
        ),
      ),
    );
  }
}
