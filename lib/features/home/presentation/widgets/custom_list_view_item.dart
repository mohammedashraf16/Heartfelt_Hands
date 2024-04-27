import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/auth/presentation/sign_up/views/sign_up_view.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';

class CustomCategoryListViewItem extends StatelessWidget {
  const CustomCategoryListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20, right: 20),
      alignment: Alignment.bottomCenter,
      width: 420,
      height: 400,
      decoration: BoxDecoration(
        image: const DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage(
            Assets.imagesDonate1,
          ),
        ),
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
              color: AppColors.kGrayColor,
              blurRadius: 10,
              offset: const Offset(0, 7)),
        ],
      ),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            width: 350,
            height: 50,
            decoration: BoxDecoration(
              color: AppColors.kMintGreenColor,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  AppStrings.foodSurplus,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.inter800Style20.copyWith(
                    color: AppColors.kBlueColor,
                  ),
                ),
              ),
              GestureDetector(
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const SignUpView(),
                                ),
                              );
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
                child: Container(
                  height: 37,
                  width: 95,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Text(
                    textAlign: TextAlign.center,
                    AppStrings.donateNow,
                    style: CustomTextStyles.inter800Style20,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
