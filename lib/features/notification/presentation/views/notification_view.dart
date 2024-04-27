import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';

import '../widgets/notification_view_body_widget.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        body: const NotificationViewBody()
      ),
    );
  }
}
