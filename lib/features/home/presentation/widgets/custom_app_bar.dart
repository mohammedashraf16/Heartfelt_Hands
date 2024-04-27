import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:heartfelt_hands/features/auth/presentation/sign_up/views/sign_up_view.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      textDirection: TextDirection.ltr,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.only(left: 8),
          decoration: BoxDecoration(
              color: AppColors.kGrayColor, shape: BoxShape.circle),
          child: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpView(),
                  ));
            },
            icon: Image.asset(
              Assets.imageCProfile,
              width: 30,
              height: 30,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 8),
          decoration: BoxDecoration(
              color: AppColors.kGrayColor, shape: BoxShape.circle),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.translate_outlined,size: 30,),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 8),
          decoration: BoxDecoration(
              color: AppColors.kGrayColor, shape: BoxShape.circle),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              Assets.imageCoins,
              width: 30,
              height: 30,
            ),
          ),
        ),
      ],
    );
  }
}
