import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/contribution/presentation/widgets/contribution_view_body.dart';

class ContributionView extends StatelessWidget {
  const ContributionView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const SafeArea(
      child: Scaffold(
        body: ContributionViewBody(),
      ),
    );
  }
}
