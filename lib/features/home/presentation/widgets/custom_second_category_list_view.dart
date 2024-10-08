import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/home/presentation/widgets/custom_containr_second_list_view.dart';

class CustomSecondCategoryListView extends StatelessWidget {
  const CustomSecondCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 274,
      width: 800,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return  CustomContainerSecondListView(index: index,);
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 10,
            );
          },
          itemCount: 5),
    );
  }
}

