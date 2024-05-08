import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomDonationNowCard extends StatelessWidget {
  const CustomDonationNowCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        margin: const EdgeInsets.all(10),
        color: Colors.white,
        elevation: 4,
        child: Column(
          children: [
            Image.asset(
              Assets.image5,
              height: 115,
              width: double.infinity,
            ),
            const SizedBox(height: 10),
            Text(
              textAlign: TextAlign.center,
              AppStrings.donateToProvidingMeals,
              style: CustomTextStyles.inter100Style16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.share_outlined,
                    color: Colors.white,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(AppColors.kGreenColor),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
