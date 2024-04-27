import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/auth/presentation/sign_up/widgets/custom_app_bar_widget.dart';
import 'package:heartfelt_hands/features/auth/presentation/sign_up/widgets/custom_sign_up_form.dart';
import 'package:heartfelt_hands/features/auth/presentation/sign_up/widgets/custom_text_create_account.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';

class SignUpViewBodyWidget extends StatelessWidget {
  const SignUpViewBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomAppBarSignUpView(
            image: Assets.imageSignUp,
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 40)),
        SliverToBoxAdapter(
            child: CustomTextCreateAccount(text: AppStrings.createAccount)),
        SliverToBoxAdapter(child: CustomSignUpForm()),
      ],
    );
  }
}


