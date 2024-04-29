import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/home/data/model/second_data.dart';
import 'package:heartfelt_hands/features/home/presentation/widgets/custom_second_text_row.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomContainerSecondListView extends StatelessWidget {
  const CustomContainerSecondListView({
    super.key, required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      width: 410,
      height: 170,
      decoration: BoxDecoration(
        color: const Color(0xffEDF6F4),
        borderRadius: BorderRadius.circular(5),
        boxShadow: const [
          BoxShadow(blurRadius: 6),
        ],
      ),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.asset(
                fit: BoxFit.fitWidth,
                secondData[index].image,
                width: 400,
                height: 155,
              ),
              Image.asset(
                fit: BoxFit.fitWidth,
                Assets.imagesDonate3,
                width: 400,
                height: 30,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                secondData[index].title,
                style: CustomTextStyles.inter800Style20,
              ),
            ),
          ),
          const SizedBox(
            height: 17,
          ),
          CustomSecondTextRow(index: index,)
        ],
      ),
    );
  }
}