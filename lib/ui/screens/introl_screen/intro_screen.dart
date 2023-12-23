// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:coffe_craze/config/app_colors.dart';
import 'package:coffe_craze/config/constants.dart';

import '../../common_widgets/custom_elevated_button.dart';
import '../landing_screen/landing_screen.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.bottomCenter,
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/6.avif'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height * .45,
          decoration: BoxDecoration(
            color: AppColors.blackColor.withOpacity(.8),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          padding: const EdgeInsets.symmetric(
              horizontal: Constants.defaultSpacingH,
              vertical: Constants.defaultSpacingV * 2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Coffee Meets\nAdventure For\nEveryone',
                    style: Theme.of(context).textTheme.displaySmall,
                    textAlign: TextAlign.start,
                  ),
                  Constants.vSpace(.4),
                  Text(
                    'Unlock The Extraordinary In\nEvery Sip',
                    style: Theme.of(context).textTheme.labelLarge,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              Constants.vSpace(2),
              CustomElevatedButton(
                label: 'Get Started',
                onPressed: () {
                  Navigator.of(context).pushNamed(LandingScreen.routeName);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
