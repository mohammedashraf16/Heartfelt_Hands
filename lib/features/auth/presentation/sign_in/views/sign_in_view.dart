import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/auth/presentation/sign_in/widget/sign_in_view_body.dart';

class SignInView extends StatelessWidget {
  const SignInView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold(
        body: SignInViewBody(),
      ),
    );
  }
}
