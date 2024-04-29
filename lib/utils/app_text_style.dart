import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';

abstract class CustomTextStyles {
  static final inter800Style20 = TextStyle(
    color: AppColors.kDeepGrayColor,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    fontFamily: "Inter",
  );
  static final inter100Style20 = TextStyle(
    color: AppColors.kRedColor,
    fontSize: 20,
    fontWeight: FontWeight.w100,
    fontFamily: "Inter",
  );
  static final inter300Style20 = TextStyle(
    color: Colors.black,
    fontSize: 20,
    fontWeight: FontWeight.w300,
    fontFamily: "Inter",
  );
  static final interStyle24 = TextStyle(
    color: AppColors.kDeepGrayColor,
    fontSize: 24,
    fontWeight: FontWeight.w200,
    fontFamily: "Inter",
  );
  static final interStyle45 =  TextStyle(
    color: Colors.black,
    fontSize: 45,
    fontWeight: FontWeight.w400,
    fontFamily: "Inter",
  );
  static final interBoldStyle24 =  TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    fontFamily: "Inter",
  );
}
