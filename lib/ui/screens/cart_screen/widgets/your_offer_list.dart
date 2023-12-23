import 'package:coffe_craze/bloc/car_bloc/bloc/cart_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/app_colors.dart';
import '../../../../config/constants.dart';
import '../../../common_widgets/custom_iconbutton.dart';

class YourOfferList extends StatelessWidget {
  const YourOfferList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Constants.vSpace(),
        Text(
          'Your Offer',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        Constants.vSpace(),
        BlocBuilder<CartBloc, CartState>(
          builder: (context, state) {
            switch (state.runtimeType) {
              case CartInitial:
                return const Center(child: Text('Your Offer will appear here'));
              case CartLoaded:
                return Expanded(
                  child: ListView.builder(
                    itemCount: (state as CartLoaded).cartList.length,
                    itemBuilder: (_, i) {
                      final item = state.cartList[i];
                      return Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: Constants.defaultSpacing * .8),
                        height: 80,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 80,
                              height: 80,
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                    image: AssetImage(item.thumbnail),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item.name,
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                // Constants.vSpace(.4),
                                Container(
                                  width: 110,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    color: AppColors.lightGray.withOpacity(.5),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomIconButton(
                                        icon: Icons.remove,
                                        backgroundColor: AppColors.lightGray,
                                        onPressed: () {},
                                      ),
                                      Text(
                                        item.quantity.toString(),
                                        style: Theme.of(context)
                                            .textTheme
                                            .titleLarge,
                                      ),
                                      CustomIconButton(
                                        icon: Icons.add,
                                        backgroundColor: AppColors.orangeColor,
                                        onPressed: () {},
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              '${item.price}\$',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(color: AppColors.orangeColor),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                );
              case CartLoading:
                return const Center(child: CircularProgressIndicator());
              default:
                return const SizedBox();
            }
          },
        )
      ],
    );
  }
}
