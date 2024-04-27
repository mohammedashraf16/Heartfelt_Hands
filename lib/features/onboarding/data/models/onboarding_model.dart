
import 'package:heartfelt_hands/utils/app_assets.dart';

class OnBoardingModel {
  final String imagePath;
  final String title;

  OnBoardingModel({
    required this.imagePath,
    required this.title,
  });
}

List<OnBoardingModel> onBoardingData = [

  OnBoardingModel(
    imagePath: Assets.imagesOnboarding1,
    title: "فرص تبرع متنوعة تغطي معظم مجالات الخير وتصل الى من يستحقها من الفئات الأشد احتياجا.",
  ),
  OnBoardingModel(
    imagePath:Assets.imagesOnboarding2,
    title: "يصنع المتطوعون فرقاً كل يوم تتيح الؤسسة الفرصة للمتطوعين للعمل في المجالات التي يعرفونها بشكل أفضل",
  ),
  OnBoardingModel(
    imagePath: Assets.imagesOnboarding3,
    title: "متابعة الإحصائيات الخاصة عبر الاطلاع على سجلات تبرعاتك من خلال حسابك الشخصي",
  ),
];
