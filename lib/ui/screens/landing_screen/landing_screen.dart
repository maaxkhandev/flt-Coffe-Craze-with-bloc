import 'package:coffe_craze/config/app_colors.dart';
import 'package:flutter/material.dart';

import '../cart_screen/cart_screen.dart';
import '../home_screen/home_screen.dart';
import '../search_screen/search_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});
  static const routeName = '/landing-screen';
  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int selectedScreenIndex = 0;
  final screens = [
    const HomeScreen(),
    const SearchScreen(),
    const CartScreen(),
    const SearchScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[selectedScreenIndex],
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.orangeColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 60,
          color: AppColors.blackColor,
          shape: const CircularNotchedRectangle(),
          notchMargin: 5,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.home_outlined,
                  color: AppColors.whiteColor,
                  size: 35,
                ),
                onPressed: () => setState(() => selectedScreenIndex = 0),
              ),
              IconButton(
                icon: const Icon(
                  Icons.search,
                  color: AppColors.whiteColor,
                  size: 35,
                ),
                onPressed: () => setState(() => selectedScreenIndex = 1),
              ),
              IconButton(
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  color: AppColors.whiteColor,
                  size: 35,
                ),
                onPressed: () => setState(() => selectedScreenIndex = 2),
              ),
              IconButton(
                icon: const Icon(
                  Icons.person_2_outlined,
                  color: AppColors.whiteColor,
                  size: 35,
                ),
                onPressed: () => setState(() => selectedScreenIndex = 3),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
