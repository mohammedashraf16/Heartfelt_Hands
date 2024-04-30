import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/auth/presentation/sign_up/views/sign_up_view.dart';
import 'package:heartfelt_hands/features/onboarding/widgets/onboarding_widget_body.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:heartfelt_hands/constants/custom_elevated_button.dart';
import 'package:page_transition/page_transition.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        body: Padding(
          padding: const EdgeInsets.only(top: 19.0, left: 20, right: 25),
          child: ListView(
            children: [
              CustomBtn(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    PageTransition(
                      child: const SignUpView(),
                      type: PageTransitionType.topToBottom,
                      curve: Easing.legacy,
                      duration: const Duration(seconds: 1),
                    ),
                  );
                },
              ),
              OnBoardingWidgetBody(
                controller: _controller,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
