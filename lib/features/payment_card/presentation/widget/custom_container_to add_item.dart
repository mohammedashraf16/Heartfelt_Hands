import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

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
