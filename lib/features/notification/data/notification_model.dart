import 'package:heartfelt_hands/utils/app_strings.dart';

class NotificationModel {
  final String title;
  final String subTitle;

  NotificationModel({
    required this.title,
    required this.subTitle,
  });

  List<NotificationModel> notificationData = [
    NotificationModel(
      title: AppStrings.contribute,
      subTitle: AppStrings.subTitleOne,
    ),
    NotificationModel(
      title: AppStrings.donateYourMoney,
      subTitle: AppStrings.subTitleTwo,
    ),
    NotificationModel(
      title: AppStrings.charity,
      subTitle: AppStrings.subTitleThree,
    ),
  ];
}
