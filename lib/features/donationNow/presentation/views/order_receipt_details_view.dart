import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/donationNow/presentation/widgets/order_receipt_details_view_body.dart';
import 'package:heartfelt_hands/utils/app_colors.dart';

class OrderReceiptDetailsView extends StatelessWidget {
  const OrderReceiptDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  Scaffold(
        backgroundColor: AppColors.kBackgroundColor,
        body: const OrderReceiptDetailsViewBody(),
      ),
    );
  }
}
