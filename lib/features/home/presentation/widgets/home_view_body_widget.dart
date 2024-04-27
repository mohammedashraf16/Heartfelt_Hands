import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/home/presentation/widgets/custom_category_item.dart';
import 'package:heartfelt_hands/features/home/presentation/widgets/custom_category_list_view.dart';
import 'package:heartfelt_hands/features/home/presentation/widgets/custom_second_list_view.dart';
import 'package:heartfelt_hands/features/onboarding/widgets/custom_row_text.dart';
import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: CustomAppBar()),
        SliverToBoxAdapter(child: SizedBox(height: 35)),
        SliverToBoxAdapter(child: CustomCategoryListView()),
        SliverToBoxAdapter(child: CustomRowText()),
        SliverToBoxAdapter(child: CustomSecondListView()),
        SliverToBoxAdapter(child: CustomCategories()),
      ],
    );
  }
}




