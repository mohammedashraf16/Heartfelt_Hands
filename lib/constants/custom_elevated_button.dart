import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../utils/app_strings.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({super.key, this.onPressed});
  final VoidCallback? onPressed;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStatePropertyAll(
            BeveledRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          backgroundColor: MaterialStatePropertyAll(
            AppColors.kGreenColor,
          ),
        ),
        onPressed: onPressed,
        child: const Text(
          AppStrings.skip,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );
  }
}