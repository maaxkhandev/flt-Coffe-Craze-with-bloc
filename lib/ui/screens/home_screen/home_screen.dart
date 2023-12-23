// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffe_craze/bloc/home_bloc/bloc/home_bloc.dart';
import 'package:coffe_craze/config/app_colors.dart';
import 'package:flutter/material.dart';

import 'package:coffe_craze/config/constants.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common_widgets/custom_sigle_choice_chiplist.dart';
import 'widgets/popular_coffe.dart';
import 'widgets/search_textfield.dart';
import 'widgets/today_special_offer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const routeName = '/home-screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String coffeType = 'All';
  late HomeBloc homeBloc = HomeBloc();
  @override
  void didChangeDependencies() {
    homeBloc.add(LoadCoffeListEvent());
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Icons.menu,
          size: 30,
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/images/avatar.avif'),
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding:
            const EdgeInsets.symmetric(horizontal: Constants.defaultSpacingH),
        child: BlocConsumer<HomeBloc, HomeState>(
          bloc: homeBloc,
          listener: (context, state) {},
          builder: (context, state) {
            switch (state.runtimeType) {
              case HomeInitial:
                return const Center(
                  child: Text('No data'),
                );
              case HomeLoading:
                return const Center(
                  child: CircularProgressIndicator(
                    color: AppColors.whiteColor,
                  ),
                );
              case HomeLoaded:
                final coffeList = (state as HomeLoaded).coffeList;

                return SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello Aqsa !',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text('Find Your Special Coffee',
                          style: Theme.of(context).textTheme.labelMedium),
                      Constants.vSpace(.8),
                      const SearchTextField(),
                      Constants.vSpace(),
                      CustomSingleSelectChipList(
                        selectedOption: coffeType,
                        onSelect: (v) {
                          setState(() => coffeType = v);
                        },
                        options: const [
                          'All',
                          'Cappucino',
                          'Espresso',
                          'Americano',
                        ],
                      ),
                      Constants.vSpace(),
                      PopularCoffeList(
                        coffeList: coffeList,
                        coffeType: coffeType,
                      ),
                      Constants.vSpace(),
                      TodaySpeciaOffer(
                        coffeList: coffeList,
                        coffeType: coffeType,
                      )
                    ],
                  ),
                );

              default:
                return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
