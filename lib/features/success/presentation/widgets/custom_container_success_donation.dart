import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';

class CustomContainerSuccessDonation extends StatelessWidget {
  const CustomContainerSuccessDonation({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 450,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xff2CD8D5), Color(0xffC5C1FF), Color(0xffFFBAC3)]),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(200),
          bottomRight: Radius.circular(200),
        ),
      ),
      child:  Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(Assets.imageVector3,width:320 ,height: 320,),
          Image.asset(Assets.image8,width:195 ,height: 195,)
        ],
      ),
    );
  }
}