import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/home/presentation/widgets/custom_bottom_nav_bar.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomOnBoardingBtn extends StatelessWidget {
  const CustomOnBoardingBtn({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        height: 49,
        width: double.infinity,
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
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const CustomBottomNavBar(),
              ),
            );
          },
          child: Text(
            text,
            style: CustomTextStyles.inter800Style20.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
