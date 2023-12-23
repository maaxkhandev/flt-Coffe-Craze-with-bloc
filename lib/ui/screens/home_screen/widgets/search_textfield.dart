import 'package:flutter/material.dart';

import '../../../../config/app_colors.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        color: AppColors.whiteColor,
      ),
      cursorColor: AppColors.whiteColor,
      decoration: InputDecoration(
        hintText: 'Search...',
        hintStyle: TextStyle(color: AppColors.lightGray),
        filled: true,
        fillColor: AppColors.lightDark,
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        prefixIcon: const Icon(
          Icons.search,
          color: Colors.grey,
        ),
      ),
    );
  }
}
