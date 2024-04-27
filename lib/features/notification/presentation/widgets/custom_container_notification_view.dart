import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/notification/presentation/widgets/custom_container_message_widget.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';

class CustomContainerNotificationView extends StatelessWidget {
  const CustomContainerNotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100.0, left: 12, right: 12),
      child: Container(
        width: double.infinity,
        height: 607,
        decoration: BoxDecoration(
          border: Border.all(
              style: BorderStyle.solid,
              width: 4,
              color: const Color(0xffFCC6F1)),
          borderRadius: BorderRadius.circular(26),
          color: Colors.white,
        ),
        child: const Column(
          children: [
            CustomContainerMessage(
              title: AppStrings.contribute,
              subTitle: AppStrings.subTitleOne,
            ),
            CustomContainerMessage(
              title: AppStrings.donateYourMoney,
              subTitle: AppStrings.subTitleTwo,
            ),
            CustomContainerMessage(
              title: AppStrings. charity,
              subTitle: AppStrings.subTitleThree,
            ),
          ],
        ),
      ),
    );
  }
}