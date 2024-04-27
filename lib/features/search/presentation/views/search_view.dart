import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';

import '../widgets/custom_search_view_body.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        body: const SearchViewBody(),
      ),
    );
  }
}
