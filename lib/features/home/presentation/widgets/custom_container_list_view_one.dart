import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/home/data/model/data.dart';
import 'package:heartfelt_hands/features/home/presentation/widgets/custom_alert_dialog.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomContainerListViewOne extends StatelessWidget {
  const CustomContainerListViewOne({
    super.key, required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20, right: 20),
      alignment: Alignment.bottomCenter,
      width: 420,
      height: 400,
      decoration: BoxDecoration(
        image:   DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage(
            data[index].image,
          ),
        ),
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
              color: AppColors.kGrayColor,
              blurRadius: 10,
              offset: const Offset(0, 7)),
        ],
      ),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal:30),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: AppColors.kMintGreenColor,
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  data[index].subTitle,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.inter800Style20.copyWith(
                    color: AppColors.kBlueColor,
                  ),
                ),
              ),
              CustomAlertDialog(index: index,)
            ],
          ),
        ],
      ),
    );
  }
}

