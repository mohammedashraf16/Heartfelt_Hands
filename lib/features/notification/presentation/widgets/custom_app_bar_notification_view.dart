import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/notification/presentation/views/notification_view.dart';
import 'package:heartfelt_hands/features/notification/presentation/widgets/custom_container_notification_view.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';

class CustomAppBarNotificationView extends StatelessWidget {
  const CustomAppBarNotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.topCenter,
          height: 200,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient:
                LinearGradient(colors: [Color(0xffC5FFED), Color(0xffFCC6F1)]),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NotificationView(),
                      ));
                },
                icon: const Icon(
                  Icons.notifications_none_outlined,
                  size: 45,
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
          ),
        ),
        const CustomContainerNotificationView(),
        const CustomContainerNotificationView(),
        const CustomContainerNotificationView(),
      ],
    );
  }
}




