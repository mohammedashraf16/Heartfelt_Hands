import 'package:heartfelt_hands/utils/app_assets.dart';
import 'package:heartfelt_hands/utils/app_strings.dart';

class ListSecondData {
  final String image;
  final String title;
  final String subTitle;

  ListSecondData(
      this.image,
      this.title,
      this.subTitle,
      );
}
List<ListSecondData> secondData = [
  ListSecondData(Assets.imageDonate2, AppStrings.providingMeals, AppStrings.amount,),
  ListSecondData(Assets.imageRectangle31, AppStrings.humanitarianCases, AppStrings.amountTwo),
  ListSecondData(Assets.imageRectangle32, AppStrings.getMarried, AppStrings.amountThree ),
  ListSecondData(Assets.imageRectangle65,  AppStrings.umrahTrips,  AppStrings.amountFour),
  ListSecondData(Assets.imageRectangle66,  AppStrings.gazaAid,  AppStrings.amountFive),
];