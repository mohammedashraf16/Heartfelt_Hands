import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/contribution/presentation/widgets/custom_check_box_contribution_view_widget.dart';
import 'package:heartfelt_hands/features/contribution/presentation/widgets/custom_circle_avatar_contribution_view_widget.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';

class CustomRowCard extends StatefulWidget {
  const CustomRowCard({
    super.key,
  });

  @override
  State<CustomRowCard> createState() => _CustomRowCardState();
}

class _CustomRowCardState extends State<CustomRowCard> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
         Row(
          children: [
            CustomCheckBoxContributionView(),
            CustomCircleAvatarContributionView(
              image: Assets.imageEllipse27,
            ),
            Spacer(),
            CustomCheckBoxContributionView(),
            CustomCircleAvatarContributionView(
              image: Assets.imageEllipse28,
            ),

          ],
        ),
        SizedBox(height: 50),
        Row(
          children: [
            CustomCheckBoxContributionView(),
            CustomCircleAvatarContributionView(
              image: Assets.imageEllipse30,
            ),
            Spacer(),
            CustomCheckBoxContributionView(),
            CustomCircleAvatarContributionView(
              image: Assets.imageEllipse29,
            ),
          ],
        )
      ],
    );
  }
}