import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/home/presentation/views/home_view.dart';
import 'package:heartfelt_hands/features/onboarding/widgets/onboarding_widget_body.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:heartfelt_hands/constants/custom_elevated_button.dart';
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeView(),
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
