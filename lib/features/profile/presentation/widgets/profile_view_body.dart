import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:heartfelt_hands/features/donation_record/presentation/views/donation_record_view.dart';
import 'package:heartfelt_hands/features/payment_card/presentation/views/payment_card_view.dart';
import 'package:heartfelt_hands/features/periodic_donation/presentation/views/periodic_donation_view.dart';
import 'package:heartfelt_hands/features/profile/presentation/widgets/custom_card_profile_view.dart';
import 'package:heartfelt_hands/features/profile/presentation/widgets/custom_profile_name_text_widget.dart';
import 'package:heartfelt_hands/features/profile/presentation/widgets/custom_row_exit_icon.dart';
import 'package:heartfelt_hands/features/statistics/presentation/views/statistics_view.dart';
import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';
import 'custom_app_bar_profile_view.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: CustomAppBarProfileView()),
        const SliverToBoxAdapter(child: SizedBox(height: 64)),
        const SliverToBoxAdapter(child: CustomProfileNameTextWidget()),
        SliverToBoxAdapter(
            child: CustomCardWidgetProfileView(
          iconButton: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StatisticsView(),
                    ));
              },
              icon: Image.asset(Assets.imageCareLeft)),
          imageOne: const Image(image: AssetImage(Assets.imageGroup97)),
          title: AppStrings.statistics,
        )),
        SliverToBoxAdapter(
            child: CustomCardWidgetProfileView(
          iconButton: IconButton(
              onPressed: () {}, icon: Image.asset(Assets.imageCareLeft)),
          imageOne: const Image(image: AssetImage(Assets.imageBookTap)),
          title: AppStrings.profilePersonly,
        )),
        SliverToBoxAdapter(
            child: CustomCardWidgetProfileView(
          imageOne:
              const Image(image: AssetImage(Assets.imageFolderSimpleStar)),
          title: AppStrings.donationRecord,
          iconButton: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DonationRecordView(),
                    ));
              },
              icon: Image.asset(Assets.imageCareLeft)),
        )),
        SliverToBoxAdapter(
            child: CustomCardWidgetProfileView(
          imageOne: const Image(image: AssetImage(Assets.imageCardHolder)),
          title: AppStrings.paymentCards,
          iconButton: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PaymentCardView(),
                    ));
              }, icon: Image.asset(Assets.imageCareLeft)),
        )),
        SliverToBoxAdapter(
            child: CustomCardWidgetProfileView(
          imageOne: const Image(image: AssetImage(Assets.imageHandHeart2)),
          title: AppStrings.periodicDonation,
          iconButton: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PeriodicDonationView(),
                    ));
              }, icon: Image.asset(Assets.imageCareLeft)),
        )),
        const SliverToBoxAdapter(child: SizedBox(height: 46)),
        const SliverToBoxAdapter(
          child: Divider(
            height: 4,
            color: Colors.black,
          ),
        ),
        SliverToBoxAdapter(
            child: CustomRowExitIcon(
          onTap: () => Navigator.pop(context),
        )),
      ],
    );
  }
}
