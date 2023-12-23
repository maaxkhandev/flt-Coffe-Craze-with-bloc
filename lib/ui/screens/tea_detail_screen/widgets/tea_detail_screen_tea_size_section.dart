// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../../../config/app_colors.dart';

class TeaDetailScreenTeaSizeSection extends StatelessWidget {
  const TeaDetailScreenTeaSizeSection({
    Key? key,
    required this.teaSize,
    required this.onClick,
  }) : super(key: key);
  final String teaSize;
  final Function(String) onClick;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Size',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        const Spacer(),
        IconButton(
            onPressed: () => onClick('S'),
            style: IconButton.styleFrom(
                backgroundColor: teaSize == 'S'
                    ? AppColors.orangeColor
                    : AppColors.lightGray),
            icon: Text(
              'S',
              style: Theme.of(context).textTheme.titleLarge,
            )),
        IconButton(
            onPressed: () => onClick('M'),
            style: IconButton.styleFrom(
                backgroundColor: teaSize == 'M'
                    ? AppColors.orangeColor
                    : AppColors.lightGray),
            icon: Text(
              'M',
              style: Theme.of(context).textTheme.titleLarge,
            )),
        IconButton(
            onPressed: () => onClick('L'),
            style: IconButton.styleFrom(
                backgroundColor: teaSize == 'L'
                    ? AppColors.orangeColor
                    : AppColors.lightGray),
            icon: Text(
              'L',
              style: Theme.of(context).textTheme.titleLarge,
            )),
      ],
    );
  }
}
