import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/profile/presentation/widgets/custom_row_app_bar_widget.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';

class CustomAppBarProfileView extends StatelessWidget {
  const CustomAppBarProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0, 3),
      children: [
        Container(
          alignment: Alignment.topLeft,
          height: 200,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xffC5FFED), Color(0xffFCC6F1)]),
          ),
          child:  const CustomRowAppBarWidget()
        ),
        CircleAvatar(
          backgroundColor: AppColors.kBackgroundColor,
          radius: 70,
          child: Image.asset(Assets.imageEllipse33),
        )
      ],
    );
  }
}

