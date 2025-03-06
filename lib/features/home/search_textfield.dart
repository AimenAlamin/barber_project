import 'package:flutter/material.dart';

import '../../../../../../core/theming/widgets/app_text_form_field.dart';

class SearchTextfield extends StatelessWidget {
  const SearchTextfield({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController searchController = TextEditingController();
    return AppTextFormField(
        backgroundColor: const Color.fromARGB(255, 29, 29, 29),
        hintText: "Search",
        hintStyle: const TextStyle(color: Colors.white),
        prefixIcon: const Icon(Icons.search, color: Colors.white),
        suffixIcon: const Icon(Icons.list, color: Colors.white),
        controller: searchController,
        onFieldSubmitted: (value) {
          searchController.clear(); // Clear the text field after submitting
        });
  }
}
