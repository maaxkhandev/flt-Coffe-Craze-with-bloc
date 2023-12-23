// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../../config/app_colors.dart';
import '../../config/constants.dart';

class CoffeContainer extends StatelessWidget {
  const CoffeContainer({
    Key? key,
    required this.child,
    this.margin,
  }) : super(key: key);
  final Widget child;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Constants.defaultSpacing * .5),
      margin:
          margin ?? const EdgeInsets.only(right: Constants.defaultSpacing * .4),
      width: MediaQuery.sizeOf(context).width * .35,
      decoration: BoxDecoration(
          color: AppColors.lightDark, borderRadius: BorderRadius.circular(10)),
      child: child,
    );
  }
}
