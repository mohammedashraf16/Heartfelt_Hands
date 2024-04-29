import 'package:flutter/material.dart';

class CustomCheckBoxContributionView extends StatefulWidget {
  const CustomCheckBoxContributionView({super.key});

  @override
  State<CustomCheckBoxContributionView> createState() =>
      _CustomCheckBoxContributionViewState();
}

class _CustomCheckBoxContributionViewState
    extends State<CustomCheckBoxContributionView> {
  bool? value = false;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
        activeColor: Colors.grey,
        checkColor: Colors.black,
        value: value,
        onChanged: (newValue) {
          setState(() {
            value = newValue;
          });
        });
  }
}