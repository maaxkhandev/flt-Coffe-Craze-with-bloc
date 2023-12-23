// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:coffe_craze/config/app_colors.dart';
import 'package:coffe_craze/config/constants.dart';

import 'widgets/your_offer_list.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.whiteColor.withOpacity(.2)),
          icon: const Icon(
            Icons.arrow_back_ios,
            size: 20,
          ),
        ),
        actions: [
          IconButton(
              iconSize: 30,
              onPressed: () {},
              icon: const Icon(Icons.notifications_none))
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: Constants.defaultSpacingH),
        child: YourOfferList(),
      ),
    );
  }
}
