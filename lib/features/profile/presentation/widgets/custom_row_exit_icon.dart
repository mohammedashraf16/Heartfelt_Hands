import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';


class CustomRowExitIcon extends StatelessWidget {
  const CustomRowExitIcon({super.key, this.onTap});

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.logout_outlined,
                color: Colors.black,
                size: 40,
              )),
          Text(
            AppStrings.logOut,
            style: CustomTextStyles.interBoldStyle24,
          )
        ],
      ),
    );
  }
}
