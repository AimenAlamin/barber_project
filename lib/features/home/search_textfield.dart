import 'package:flutter/material.dart';

import '../../../../../../core/theming/widgets/app_text_form_field.dart';

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    return AppTextFormField(
        hintText: '',
        prefixText: "  Search",
        prefixIcon: const Icon(Icons.search),
        suffixIcon: const Icon(Icons.list),
        controller: searchController,
        onFieldSubmitted: (value) {
          searchController.clear(); // Clear the text field after submitting
        });
  }
}
