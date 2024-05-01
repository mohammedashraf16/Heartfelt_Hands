import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';

class CustomContainerSuccessPayment extends StatelessWidget {
  const CustomContainerSuccessPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 450,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color(0xffC1DFC4),
          Color(
            0xffC1DFC4,
          )
        ]),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(200),
          bottomRight: Radius.circular(200),
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            Assets.imageVector3,
            width: 320,
            height: 320,
          ),
          Image.asset(
            Assets.image13,
            width: 195,
            height: 195,
          )
        ],
      ),
    );
  }
}
