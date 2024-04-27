import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heartfelt_hands/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:heartfelt_hands/features/auth/presentation/sign_up/widgets/sign_up_view_body.dart';
import 'package:heartfelt_hands/features/services/service_locator.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: BlocProvider(
          create: (context) => getIt<AuthCubit>(),
          child: const SignUpViewBodyWidget(),
        ),
      ),
    );
  }
}
