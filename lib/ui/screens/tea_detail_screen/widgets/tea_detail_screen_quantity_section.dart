// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../config/app_colors.dart';
import '../../../../config/constants.dart';
import '../../../common_widgets/custom_iconbutton.dart';

class TeaDetailScreenQuantitySection extends StatelessWidget {
  const TeaDetailScreenQuantitySection({
    Key? key,
    required this.onAddClick,
    required this.onRemoveClick,
    required this.quantity,
  }) : super(key: key);
  final VoidCallback onAddClick;
  final VoidCallback onRemoveClick;
  final int quantity;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quantity',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const Spacer(),
        CustomIconButton(
            padding: const EdgeInsets.all(Constants.defaultSpacing * .3),
            iconSize: 30,
            icon: Icons.remove,
            onPressed: onRemoveClick,
            backgroundColor: AppColors.lightGray),
        Constants.hSpace(.4),
        Text(
          quantity.toString(),
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Constants.hSpace(.4),
        CustomIconButton(
            padding: const EdgeInsets.all(Constants.defaultSpacing * .3),
            iconSize: 30,
            icon: Icons.add,
            onPressed: onAddClick,
            backgroundColor: AppColors.orangeColor),
      ],
    );
  }
}
