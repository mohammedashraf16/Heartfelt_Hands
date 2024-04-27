import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomCardWidgetProfileView extends StatelessWidget {
  const CustomCardWidgetProfileView({
    super.key,
    required this.imageOne,
    required this.title,
    this.onPressed, required this.iconButton,
  });

  final Image imageOne;
  final String title;
  final IconButton iconButton;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: SizedBox(
        height: 70,
        child: Card(
          color: AppColors.kLightRedColor,
          elevation: 5,
          child: Row(
            children: [
              const SizedBox(width: 10),
              Image(
                image: imageOne.image,
                height: 32,
                width: 41,
              ),
              const SizedBox(width: 14),
              Text(title, style: CustomTextStyles.interBoldStyle24),
              const Spacer(),
              IconButton(
                  onPressed: onPressed,
                  icon:iconButton),
              const SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}
