import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heartfelt_hands/core/functions/custom_toast.dart';
import 'package:heartfelt_hands/features/auth/presentation/auth_cubit/auth_cubit.dart';
import 'package:heartfelt_hands/features/auth/presentation/auth_cubit/auth_state.dart';
import 'package:heartfelt_hands/features/auth/presentation/sign_up/widgets/terms_and_condition_widget.dart';
import 'package:heartfelt_hands/features/profile/presentation/views/profile_view.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'custom_sign_up_screen.dart';
import 'custom_text_form_field.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignUpSuccessState) {
          flutterShowToast("Account Created Successfully", context);
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const ProfileView(),
              ));
        } else if (state is SignUpFailureState) {
          flutterShowToast(state.errorMessage, context);
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
            key: authCubit.signupFormKey,
            child: Column(
              children: [
                CustomTextFormFieldWidget(
                  icon: IconButton(onPressed: (){}, icon: const Icon(Icons.person)),
                    label: AppStrings.fullName,
                    onChanged: (fullName) {
                      authCubit.fullName = fullName;
                    }),
                CustomTextFormFieldWidget(
                    icon: IconButton(onPressed: (){}, icon: const Icon(Icons.email)),
                    label: AppStrings.email,
                    onChanged: (email) {
                      authCubit.email = email;
                    }),
                CustomTextFormFieldWidget(
                    icon: IconButton(onPressed: (){}, icon: const Icon(Icons.remove_red_eye)),
                    label: AppStrings.password,
                    onChanged: (password) {
                      authCubit.password = password;
                    }),
                CustomTextFormFieldWidget(
                    icon:IconButton(onPressed: (){}, icon: const Icon(Icons.remove_red_eye)) ,
                    label: AppStrings.confirmPassword,
                    onChanged: (confirmPassword) {
                      authCubit.confirmPassword = confirmPassword;
                    }),
                CustomTextFormFieldWidget(
                    icon: IconButton(onPressed: (){}, icon: const Icon(Icons.phone)),
                    label: AppStrings.phoneNumber,
                    onChanged: (phoneNumber) {
                      authCubit.phoneNumber = phoneNumber;
                    }),
                const SizedBox(height: 20),
                const TermsAndCondition(),
                state is SignUpLoadingState
                    ? CircularProgressIndicator(
                        color: AppColors.kRedColor,
                      )
                    : CustomButtonSignUpScreen(
                        color: authCubit.termsAndConditionCheckBox == false
                            ? AppColors.kGrayColor
                            : null,
                        onTap: () {
                          if (authCubit.termsAndConditionCheckBox == true) {
                            if (authCubit.signupFormKey.currentState!
                                .validate()) {
                              authCubit.signUpWithEmailAndPassword();
                            }
                          }
                        },
                      ),
              ],
            ));
      },
    );
  }
}
