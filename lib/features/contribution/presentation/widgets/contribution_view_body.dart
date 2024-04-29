import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/auth/presentation/sign_up/widgets/custom_sign_up_screen.dart';
import 'package:heartfelt_hands/features/auth/presentation/sign_up/widgets/custom_text_form_field.dart';
import 'package:heartfelt_hands/features/contribution/presentation/widgets/custom_app_bar_contribution_view.dart';
import 'package:heartfelt_hands/features/contribution/presentation/widgets/custom_contact_container.dart';
import 'package:heartfelt_hands/features/contribution/presentation/widgets/custom_donation_details_container.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';

class ContributionViewBody extends StatelessWidget {
  const ContributionViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: CustomAppBarContributionView()),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              AppStrings.satisfyHunger,
              style: CustomTextStyles.interStyle24.copyWith(
                fontSize: 30,
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(child: CustomContactContainer()),
        const SliverToBoxAdapter(child: CustomDonationDetailsContainer()),
        const SliverToBoxAdapter(child: CustomContainerPaymentMethod()),
      ],
    );
  }
}

class CustomContainerPaymentMethod extends StatelessWidget {
  const CustomContainerPaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: double.infinity,
        height: 600,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.kBackgroundColor,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.paymentMethod,
                style: CustomTextStyles.interBoldStyle24,
              ),
              const CustomRowCard(),
              const SizedBox(
                height: 50,
              ),
              const CustomRowCard(),
              CustomTextFormFieldWidget(
                label: AppStrings.cardNumber,
                icon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.credit_card),
                ),
              ),
              CustomTextFormFieldWidget(
                label: AppStrings.postalCode,
                icon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.code),
                ),
              ),
              CustomButtonSignUpScreen(
                onTap: () {},
                color: const Color(0xffFF9A44),
                text: AppStrings.confirm,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomRowCard extends StatefulWidget {
  const CustomRowCard({
    super.key,
  });

  @override
  State<CustomRowCard> createState() => _CustomRowCardState();
}

class _CustomRowCardState extends State<CustomRowCard> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomCheckBoxContributionView(),
        CustomCircleAvatarContributionView(
          image: Assets.imageEllipse27,
        ),
        Spacer(),
        CustomCheckBoxContributionView(),
        CustomCircleAvatarContributionView(
          image: Assets.imageEllipse28,
        ),
      ],
    );
  }
}

class CustomCheckBoxContributionView extends StatefulWidget {
  const CustomCheckBoxContributionView({super.key});

  @override
  State<CustomCheckBoxContributionView> createState() =>
      _CustomCheckBoxContributionViewState();
}

class _CustomCheckBoxContributionViewState
    extends State<CustomCheckBoxContributionView> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.grey,
        checkColor: Colors.black,
        value: value,
        onChanged: (newValue) {
          setState(() {
            value = newValue;
          });
        });
  }
}

class CustomCircleAvatarContributionView extends StatelessWidget {
  const CustomCircleAvatarContributionView({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.kBackgroundColor,
      radius: 40,
      child: Image.asset(
        image,
        height: 200,
        width: 100,
      ),
    );
  }
}
