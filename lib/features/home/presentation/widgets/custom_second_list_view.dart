import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/home/presentation/widgets/custom_second_category_list_view.dart';

class CustomSecondListView extends StatelessWidget {
  const CustomSecondListView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomSecondCategoryListView(),
      ],
    );
  }
}