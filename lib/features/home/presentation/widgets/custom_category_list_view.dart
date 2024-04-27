import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/home/presentation/widgets/custom_list_view_item.dart';

class CustomCategoryListView extends StatelessWidget {
  const CustomCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: 600,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const CustomCategoryListViewItem();
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 5,
            );
          },
          itemCount: 5),
    );
  }
}
