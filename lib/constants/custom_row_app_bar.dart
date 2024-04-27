import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomRowAppBar extends StatelessWidget {
  const CustomRowAppBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 80.0),
          child: Text(
            title,
            style: CustomTextStyles.interStyle45,
          ),
        ),
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Image.asset(
            Assets.imageCareLeft,
            height: 32,
            width: 41,
          ),
        ),
      ],
    );

  }
}
