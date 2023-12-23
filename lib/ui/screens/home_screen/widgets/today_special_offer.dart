// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:coffe_craze/bloc/car_bloc/bloc/cart_bloc.dart';
import 'package:coffe_craze/config/app_images.dart';
import 'package:coffe_craze/data/models/coffe_model.dart';

import '../../../../config/app_colors.dart';
import '../../../../config/constants.dart';
import '../../../common_widgets/coffe_container.dart';
import '../../tea_detail_screen/tea_detail_screen.dart';

class TodaySpeciaOffer extends StatelessWidget {
  const TodaySpeciaOffer({
    Key? key,
    required this.coffeList,
    required this.coffeType,
  }) : super(key: key);
  final List<CoffeModel> coffeList;
  final String coffeType;
  @override
  Widget build(BuildContext context) {
    List<CoffeModel> filteredList = coffeType.toLowerCase() == 'all'
        ? coffeList
        : coffeList.where((e) => e.name == coffeType).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Todays Special Offer',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            TextButton(
              onPressed: () {},
              style:
                  TextButton.styleFrom(foregroundColor: AppColors.orangeColor),
              child: const Text(
                'View All',
              ),
            ),
          ],
        ),
        ListView.builder(
          shrinkWrap: true,
          itemCount: filteredList.length,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (_, i) {
            final item = filteredList[i];
            return InkWell(
              onTap: () => Navigator.of(context)
                  .pushNamed(TeaDetailScreen.routeName, arguments: item),
              child: CoffeContainer(
                margin: const EdgeInsets.only(
                  bottom: Constants.defaultSpacing * .5,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.other.coffe,
                      width: 80,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      item.name,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    const Spacer(),
                    Text('${item.price}\$'),
                    BlocConsumer<CartBloc, CartState>(
                      listener: (context, state) {
                        // Handle state changes if needed
                      },
                      builder: (context, state) {
                        final CartBloc cartBloc =
                            BlocProvider.of<CartBloc>(context);
                        final isItemInCart =
                            cartBloc.getCartList().contains(item);

                        return IconButton(
                          constraints: const BoxConstraints(),
                          onPressed: () {
                            cartBloc.add(AddToCartEvent(coffeModel: item));
                          },
                          style: IconButton.styleFrom(
                            iconSize: 15,
                            padding: const EdgeInsets.all(
                                Constants.defaultSpacing * .2),
                            foregroundColor: AppColors.whiteColor,
                            backgroundColor: AppColors.orangeColor,
                          ),
                          icon: Icon(
                            isItemInCart ? Icons.remove : Icons.add,
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            );
          },
        )
      ],
    );
  }
}
