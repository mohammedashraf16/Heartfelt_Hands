import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import '../../../notification/presentation/views/notification_view.dart';
class CustomRowAppBarWidget extends StatelessWidget {
  const CustomRowAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}