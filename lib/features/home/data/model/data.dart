import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';

class ListOneData {
  final String image;
  final String title;
  final String subTitle;

  ListOneData(
    this.image,
    this.title,
    this.subTitle,
  );
}
List<ListOneData> data = [
  ListOneData(Assets.imagesDonate1, AppStrings.donateNow, AppStrings.foodSurplus,),
  ListOneData(Assets.imageDonate2, AppStrings.donateNow, AppStrings.oldIsNewToOthers),
  ListOneData(Assets.imageDonate3, AppStrings.shareNow, AppStrings.rateYourExpre ),
  ListOneData(Assets.imageDonate4,  AppStrings.payYourZakat,  AppStrings.zakatOnMoney),
];