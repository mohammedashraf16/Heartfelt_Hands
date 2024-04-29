import 'package:flutter/material.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class CustomRateContainer extends StatelessWidget {
  const CustomRateContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(34),
          color: Colors.white,
        ),
        child: Container(
          width: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(19),
            gradient: const LinearGradient(
              colors: [
                Color(0xffF05F57),
                Color(0xffA11E5D),
              ],
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              textAlign: TextAlign.left,
              "100%",
              style: CustomTextStyles.inter800Style20.copyWith(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
