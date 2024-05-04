import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/auth/presentation/sign_up/views/sign_up_view.dart';
import 'package:heartfelt_hands/features/home/data/model/data.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomAlertDialog extends StatelessWidget {
  const CustomAlertDialog({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              backgroundColor: AppColors.kMintGreenColor,
              actions: [

                TextButton(
                  onPressed: () {
                    customSignupNavigate(context);
                  },

                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      AppColors.kGreenColor,
                    ),
                  ),
                  child: Text(
                    "انشاء حساب",
                    style: CustomTextStyles.inter800Style20.copyWith(color: Colors.white),
                  ),

                ),
              ],
              title: Text(
                " قم بانشاء حساب",
                style: CustomTextStyles.inter800Style20
                    .copyWith(fontSize: 30, color: Colors.black),
              ),
              contentPadding: const EdgeInsets.all(20),
              content: Text(
                "لكي تتمكن من التبرع وتقديم الدعم",
                style: CustomTextStyles.inter800Style20,
              ),
            );
          },
        );
      },

      child:
      Container(
        height: 37,
        width: 95,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Text(
          textAlign: TextAlign.center,
          data[index].title,
          style: CustomTextStyles.inter800Style20,
        ),
      ),
    );
  }

  customSignupNavigate(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SignUpView(),
      ),
    );
  }
}