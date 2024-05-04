import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:heartfelt_hands/features/shop/presentation/widgets/custom_app_bar_shop.dart';
import 'package:heartfelt_hands/features/shop/presentation/widgets/custom_container_shop_view.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';

class ShopViewBody extends StatelessWidget {
  const ShopViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: CustomAppBarShopView(
          imageOne: Assets.shape,
          title: AppStrings.shop,
        )),
        SliverToBoxAdapter(child: CustomContainerShopView()),
      ],
    );
  }
}



