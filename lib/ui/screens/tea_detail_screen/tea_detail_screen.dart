import 'package:coffe_craze/config/constants.dart';
import 'package:coffe_craze/data/models/coffe_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../common_widgets/custom_elevated_button.dart';
import 'widgets/tea_detail_screen_hero.dart';
import 'widgets/tea_detail_screen_quantity_section.dart';
import 'widgets/tea_detail_screen_tea_size_section.dart';

class TeaDetailScreen extends StatefulWidget {
  const TeaDetailScreen({super.key});
  static const routeName = '/tea-detail-screen';

  @override
  State<TeaDetailScreen> createState() => _TeaDetailScreenState();
}

class _TeaDetailScreenState extends State<TeaDetailScreen> {
  int quantity = 1;
  String teaSize = 'M';
  @override
  Widget build(BuildContext context) {
    final coffe = ModalRoute.of(context)!.settings.arguments as CoffeModel;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TeaDetailScreenHero(coffe: coffe),
            Constants.vSpace(),
            Container(
              height: MediaQuery.sizeOf(context).height * .55 - 140,
              padding: const EdgeInsets.symmetric(
                  horizontal: Constants.defaultSpacingH),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        coffe.name,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        '${coffe.price}\$',
                        style: Theme.of(context).textTheme.titleLarge,
                      )
                    ],
                  ),
                  Constants.vSpace(.8),
                  RatingBarIndicator(
                    rating: coffe.ratings.toDouble(),
                    itemBuilder: (context, index) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    itemCount: 5,
                    itemSize: 20,
                    direction: Axis.horizontal,
                  ),
                  Constants.vSpace(3),
                  TeaDetailScreenTeaSizeSection(
                    onClick: (v) => setState(() => teaSize = v),
                    teaSize: teaSize,
                  ),
                  Constants.vSpace(.6),
                  TeaDetailScreenQuantitySection(
                    onAddClick: () => setState(() {
                      quantity = quantity + 1;
                    }),
                    onRemoveClick: () => setState(() {
                      if (quantity > 1) {
                        quantity = quantity - 1;
                      }
                    }),
                    quantity: quantity,
                  ),
                  // Constants.vSpace(3),
                  const Spacer(),
                  CustomElevatedButton(onPressed: () {}, label: 'Add to Cart')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
