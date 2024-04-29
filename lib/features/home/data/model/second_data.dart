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
  ListOneData(Assets.imageDonate2, AppStrings.donateNow, AppStrings.foodSurplus,),
  ListOneData(Assets.imageRectangle31, AppStrings.donateNow, AppStrings.oldIsNewToOthers),
  ListOneData(Assets.imageRectangle32, AppStrings.shareNow, AppStrings.rateYourExpre ),
  ListOneData(Assets.imageRectangle65,  AppStrings.payYourZakat,  AppStrings.zakatOnMoney),
  ListOneData(Assets.imageRectangle66,  AppStrings.payYourZakat,  AppStrings.zakatOnMoney),
];