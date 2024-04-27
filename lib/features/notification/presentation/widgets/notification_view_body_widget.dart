import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/profile/presentation/widgets/custom_row_exit_icon.dart';
import 'custom_app_bar_notification_view.dart';

class NotificationViewBody extends StatelessWidget {
  const NotificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CustomAppBarNotificationView()),
        SliverToBoxAdapter(child: SizedBox(height: 46),),
        SliverToBoxAdapter(child: Divider(height: 4,color: Colors.black),),
        SliverToBoxAdapter(child: CustomRowExitIcon()),
      ],
    );
  }
}

