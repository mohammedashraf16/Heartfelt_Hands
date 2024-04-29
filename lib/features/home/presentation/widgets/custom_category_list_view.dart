import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/home/data/model/data.dart';
import 'package:heartfelt_hands/features/home/presentation/widgets/custom_container_list_view_one.dart';

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
            return   CustomContainerListViewOne(index: index,);
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 10,
            );
          },
          itemCount: data.length),
    );
  }
}

