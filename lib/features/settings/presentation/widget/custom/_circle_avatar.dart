import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomCircleAvatarSettingsView extends StatelessWidget {
  const CustomCircleAvatarSettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'محمد أشرف',
                style: CustomTextStyles.inter800Style20.copyWith(
                  fontSize: 25,
                ),
              ),
              Text("mohammedashraf@",style: CustomTextStyles.inter800Style20,)
            ],
          ),
          const SizedBox(width: 20,),
          CircleAvatar(
            radius: 60,
            backgroundColor: AppColors.kMintGreenColor,
            child: const Icon(
              Icons.person_2_outlined,
              size: 60,
            ),
          ),
        ],
      ),
    );
  }
}