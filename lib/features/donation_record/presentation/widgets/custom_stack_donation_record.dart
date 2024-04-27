import 'package:flutter/material.dart';
import 'package:heartfelt_hands/constants/custom_row_app_bar.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';

import 'custom_container_donation_record.dart';

class CustomStackDonationRecord extends StatelessWidget {
  const CustomStackDonationRecord({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      alignment: Alignment.topLeft,
      children: [
        Column(
          children: [
            Image(image: AssetImage(Assets.imageVector4)),
            Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Image(
                image: AssetImage(Assets.imageVector5),
              ),
            )
          ],
        ),
        CustomRowAppBar(
          title: AppStrings.donationRecord,
        ),
        CustomContainerDonationRecord(),
      ],
    );
  }
}
