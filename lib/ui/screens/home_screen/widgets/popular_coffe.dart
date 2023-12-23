// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:coffe_craze/bloc/car_bloc/bloc/cart_bloc.dart';
import 'package:coffe_craze/data/models/coffe_model.dart';

import '../../../../config/app_colors.dart';
import '../../../../config/constants.dart';
import '../../../common_widgets/coffe_container.dart';
import '../../tea_detail_screen/tea_detail_screen.dart';

class PopularCoffeList extends StatelessWidget {
  const PopularCoffeList({
    Key? key,
    required this.coffeList,
    required this.coffeType,
  }) : super(key: key);
  final List<CoffeModel> coffeList;
  final String coffeType;
  @override
  Widget build(BuildContext context) {
    final CartBloc cartBloc = BlocProvider.of<CartBloc>(context);
    List<CoffeModel> filteredList = coffeType.toLowerCase() == 'all'
        ? coffeList
        : coffeList.where((e) => e.name == coffeType).toList();
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Popular Coffe',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Constants.vSpace(.6),
        SizedBox(
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: filteredList.length,
            itemBuilder: (_, i) {
              final coffe = filteredList[i];
              return InkWell(
                onTap: () => Navigator.of(context)
                    .pushNamed(TeaDetailScreen.routeName, arguments: coffe),
                child: CoffeContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            coffe.thumbnail,
                            width: 70,
                            height: 70,
                            fit: BoxFit.cover,
                          ),
                          const Icon(
                            Icons.favorite_outline,
                            size: 20,
                          )
                        ],
                      ),
                      Text(
                        coffe.name,
                        style: Theme.of(context).textTheme.titleSmall,
                      ),
                      Constants.vSpace(.2),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '${coffe.price}\$',
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                          InkWell(
                              child: Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: Constants.defaultSpacingV * .15,
                                    horizontal: Constants.defaultSpacingH * .4),
                                decoration: BoxDecoration(
                                    color: AppColors.orangeColor,
                                    borderRadius: BorderRadius.circular(4)),
                                child: const Icon(
                                  Icons.shopping_cart_outlined,
                                  color: AppColors.whiteColor,
                                  size: 15,
                                ),
                              ),
                              onTap: () {
                                cartBloc.add(AddToCartEvent(coffeModel: coffe));
                              }),
                        ],
                      )
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
