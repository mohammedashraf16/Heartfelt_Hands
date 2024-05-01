import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/donations/presentation/donation_view.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:heartfelt_hands/features/categories/presentation/categories_view.dart';
import 'package:heartfelt_hands/features/home/presentation/views/home_view.dart';
import 'package:heartfelt_hands/features/search/presentation/views/search_view.dart';
import 'package:heartfelt_hands/features/settings/presentation/views/settings_view.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
int _initialActiveIndex=2;
 final List<Widget> _widgetOptions = <Widget>[
   const DonationsView(),
   const SearchView(),
   const HomeView(),
   const CategoriesView(),
   const SettingsView(),
];
 void _changeItem(int value){
   setState(() {
     _initialActiveIndex=value;
   });
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_initialActiveIndex),
      bottomNavigationBar: ConvexAppBar(
        items: [
          TabItem(icon:Image.asset(Assets.imagesHandHeart), title: 'Donations'),
          TabItem(icon:Image.asset(Assets.imagesSearch), title: 'Search'),
          TabItem(icon:Image.asset(Assets.imagesHome,height: 40,width: 50,), title: 'Home',),
          TabItem(icon:Image.asset(Assets.imagesCategories), title: 'Categories'),
          TabItem(icon:Image.asset(Assets.imagesSettings), title: 'Settings'),
        ],
        activeColor: AppColors.kBrownColor,

        height: 40,
        color: AppColors.kGreenColor,
        backgroundColor: AppColors.kBackgroundColor,
        style:TabStyle.flip ,
        initialActiveIndex:_initialActiveIndex ,
        onTap: _changeItem,
      ),
    );
  }
}
