// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../config/app_colors.dart';

class CustomSingleSelectChipList extends StatelessWidget {
  const CustomSingleSelectChipList({
    Key? key,
    required this.options,
    required this.onSelect,
    required this.selectedOption,
  }) : super(key: key);
  final List<String> options;
  final Function onSelect;
  final String selectedOption;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int index = 0; index < options.length; index++)
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: ChoiceChip(
                backgroundColor: AppColors.lightDark,
                selectedColor: AppColors.orangeColor,
                checkmarkColor: AppColors.whiteColor,
                label: Text(
                  options[index],
                  style: const TextStyle(color: AppColors.whiteColor),
                ),
                selected: selectedOption == options[index],
                onSelected: (bool selected) {
                  onSelect(options[index]);
                },
              ),
            ),
        ],
      ),
    );
  }
}
