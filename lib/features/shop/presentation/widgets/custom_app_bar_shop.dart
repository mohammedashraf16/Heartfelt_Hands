import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomAppBarShopView extends StatelessWidget {
  const CustomAppBarShopView({
    super.key,
    required this.imageOne,
    required this.title,
  });

  final String imageOne;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(imageOne),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(width: 130),
            Text(
              title,
              style: CustomTextStyles.interStyle50,
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Image(
                height: 42,
                width: 52,
                image: AssetImage(Assets.imageCareLeft),
              ),
            )
          ],
        )
      ],
    );
  }
}
