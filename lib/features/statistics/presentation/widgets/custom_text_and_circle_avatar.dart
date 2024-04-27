import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomTextAndCircleAvatar extends StatelessWidget {
  const CustomTextAndCircleAvatar(
      {super.key,
        required this.image,
        required this.subTitle,
        required this.number});

  final String image;
  final String subTitle;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: AssetImage(image),
          radius: 50,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: Text(number, style: CustomTextStyles.interStyle45),
            ),
            Text(subTitle, style: CustomTextStyles.inter800Style20),
          ],
        )
      ],
    );
  }
}