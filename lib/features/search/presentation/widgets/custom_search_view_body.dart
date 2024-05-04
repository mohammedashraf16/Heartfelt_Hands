import 'package:flutter/material.dart';
import 'package:heartfelt_hands/features/auth/presentation/sign_up/widgets/custom_text_form_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomTextFormFieldWidget(
      label: "Search",
      icon: IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
    );
  }
}
