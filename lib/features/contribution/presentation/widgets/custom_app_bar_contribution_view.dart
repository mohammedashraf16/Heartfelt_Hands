import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';

class CustomAppBarContributionView extends StatelessWidget {
  const CustomAppBarContributionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        Image.asset(
          Assets.image4,
        ),
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset(
            Assets.imageCareLeft,
            width: 60,
          ),
        ),
      ],
    );
  }
}
