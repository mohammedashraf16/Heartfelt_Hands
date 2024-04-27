import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/statistics/presentation/widgets/custom_stack_app_bar_statistic_view.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';

class CustomStatisticsViewBody extends StatelessWidget {
  const CustomStatisticsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: CustomStackAppBar(title: AppStrings.statistics))
      ],
    );
  }
}





