import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/shop/presentation/widgets/shop_view_body.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';

class ShopView extends StatelessWidget {
  const ShopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: const ShopViewBody(),
    );
  }
}
