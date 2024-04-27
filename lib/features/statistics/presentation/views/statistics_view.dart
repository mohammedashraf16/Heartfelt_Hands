import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/statistics/presentation/widgets/custom_statistics_view_body.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';

class StatisticsView extends StatelessWidget {
  const StatisticsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        body: const CustomStatisticsViewBody(),
      ),
    );
  }
}
