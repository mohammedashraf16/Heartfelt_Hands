import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';

import '../widgets/home_view_body_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        body: const HomeViewBody(),
      ),
    );
  }
}



