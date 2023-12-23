// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:coffe_craze/data/models/coffe_model.dart';

import '../../../../config/app_colors.dart';
import '../../../common_widgets/custom_iconbutton.dart';

class TeaDetailScreenHero extends StatelessWidget {
  const TeaDetailScreenHero({
    Key? key,
    required this.coffe,
  }) : super(key: key);
  final CoffeModel coffe;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * .45,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(coffe.thumbnail),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.blackColor.withOpacity(.6), Colors.transparent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomIconButton(
              icon: Icons.arrow_back_ios,
              padding: const EdgeInsets.all(5),
              onPressed: () => Navigator.pop(context),
              backgroundColor: AppColors.lightGray.withOpacity(.7),
            ),
            Text(
              'Details',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            CustomIconButton(
              icon: Icons.favorite_border,
              padding: const EdgeInsets.all(5),
              onPressed: () {},
              backgroundColor: AppColors.lightGray.withOpacity(.7),
            ),
          ],
        ),
      ),
    );
  }
}
