import 'package:flutter/material.dart';
import 'package:heartfelt_hands/constants/custom_row_app_bar.dart';
import 'package:heartfelt_hands/features/statistics/presentation/widgets/custom_container_statistics_view.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';

class CustomStackAppBar extends StatelessWidget {
  const CustomStackAppBar({super.key, required this.title});

  final String title;

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
          title: AppStrings.statistics,
        ),
        CustomContainerStatisticsView(),
      ],
    );
  }
}