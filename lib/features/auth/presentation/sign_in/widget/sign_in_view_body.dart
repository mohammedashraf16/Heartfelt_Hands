import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/auth/presentation/sign_up/widgets/custom_app_bar_widget.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';

class SignInViewBody extends StatelessWidget {
  const SignInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomAppBarSignUpView(
            image: Assets.imageSignUp,
          ),
        ),
      ],
    );
  }
}
