import 'package:flutter/material.dart';
import 'package:heartfelt_hands/constants/custom_arrow_button.dart';
import 'package:heartfelt_hands/features/onboarding/data/models/onboarding_model.dart';
import 'package:heartfelt_hands/features/onboarding/widgets/custom_onboarding_button.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'custom_smooth_page.dart';

class OnBoardingWidgetBody extends StatefulWidget {
  const OnBoardingWidgetBody(
      {super.key, required this.controller});

  final PageController controller;

  @override
  State<OnBoardingWidgetBody> createState() => _OnBoardingWidgetBodyState();
}

class _OnBoardingWidgetBodyState extends State<OnBoardingWidgetBody> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 800,
      child: PageView.builder(
        onPageChanged: (index) {
            setState(() {
            currentIndex = index;
            });
        },
        controller: widget.controller,
        itemCount: onBoardingData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              const SizedBox(height: 34),
              Container(
                width: double.infinity,
                height: 392,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(onBoardingData[index].imagePath),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 45),
              Text(
                onBoardingData[index].title,
                textAlign: TextAlign.center,
                maxLines: 4,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  overflow: TextOverflow.visible,
                ),
              ),
              const SizedBox(height: 48),
              CustomSmoothPageIndicator(
                controller: widget.controller,
              ),
              currentIndex== onBoardingData.length-1?const Column(
                children: [
                  SizedBox(height: 30),
                  CustomOnBoardingBtn(text:AppStrings.start,),
                ],
              ):
              CustomButton(
                onTap: () {
                  widget.controller.nextPage(
                    duration: const Duration(milliseconds: 200),
                    curve: Curves.easeInCirc,
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}

