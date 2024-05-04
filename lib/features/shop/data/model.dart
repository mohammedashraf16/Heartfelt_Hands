import 'package:heartfelt_hands/utils/app_strings.dart';

class ShopData {
  final String title;
  final String subTitle;

  ShopData({
    required this.title,
    required this.subTitle,
  });
}
List<ShopData> shopData = [
  ShopData(title: AppStrings.donationOne, subTitle:AppStrings.paymentDonationDetailsOne ,),
  ShopData(title: AppStrings.donationTwo, subTitle:AppStrings.paymentDonationDetailsThree ,),
  ShopData(title: AppStrings.donationThree, subTitle:AppStrings.paymentDonationDetailsTwo ,),
];
