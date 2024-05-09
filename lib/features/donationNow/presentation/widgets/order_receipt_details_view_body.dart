import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:heartfelt_hands/features/auth/presentation/counter_cubit/counter_cubit.dart';
import 'package:heartfelt_hands/features/auth/presentation/sign_up/widgets/custom_sign_up_screen.dart';
import 'package:heartfelt_hands/features/auth/presentation/sign_up/widgets/custom_text_form_field.dart';
import 'package:heartfelt_hands/features/donationNow/presentation/widgets/custom_cntainer_location.dart';
import 'package:heartfelt_hands/features/donationNow/presentation/widgets/custom_row_housing_type.dart';
import 'package:heartfelt_hands/features/success/presentation/views/success_donation_view.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'package:heartfelt_hands/utils/app_text_style.dart';
import 'package:page_transition/page_transition.dart';

class OrderReceiptDetailsViewBody extends StatelessWidget {
  const OrderReceiptDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SizedBox(height: 10)),
          SliverToBoxAdapter(
            child: Text(
              AppStrings.orderReceiptDetails,
              style: CustomTextStyles.interStyle30,
              textAlign: TextAlign.center,
            ),
          ),
          SliverToBoxAdapter(
            child: Image.asset(
              Assets.image47,
              height: 200,
              fit: BoxFit.fitWidth,
            ),
          ),
          const SliverToBoxAdapter(child: CustomContainerLocation()),
          const SliverToBoxAdapter(child: CustomRowHousingType()),
          const SliverToBoxAdapter(
              child: CustomTextFormFieldWidget(
                  label: AppStrings.numberOfBuilding, iconButton: null)),
          const SliverToBoxAdapter(
            child: Row(
              children: [
                Expanded(
                    child: CustomTextFormFieldWidget(
                        iconButton: null, label: AppStrings.numberOfApartment)),
                Expanded(
                    child: CustomTextFormFieldWidget(
                        iconButton: null, label: AppStrings.numberOfFloor)),
              ],
            ),
          ),
          const SliverToBoxAdapter(child: CustomTextFormFieldWidget(iconButton: null,label: AppStrings.nameOfStreet)),
           const SliverToBoxAdapter(child: CustomTextFormFieldWidget(iconButton: null,label: AppStrings.phoneNumber)),
           const SliverToBoxAdapter(child: CustomTextFormFieldWidget(iconButton: null,label: AppStrings.descriptionOfAddress,maxLines: 5)),
           SliverToBoxAdapter(child: CustomButtonSignUpScreen(onTap: (){
             Navigator.push(context, PageTransition(child: const SuccessDonationView(), type: PageTransitionType.fade,duration: const Duration(seconds: 1)),).then((value) => (value) {
               BlocProvider.of<CounterCubit>(context).increment();
             });
           },text: AppStrings.confirmOrder,color: null,),)
        ],
      ),
    );
  }
}




