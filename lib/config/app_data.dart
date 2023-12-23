import 'package:coffe_craze/config/app_images.dart';
import 'package:coffe_craze/data/models/coffe_model.dart';

class AppData {
  static List<CoffeModel> coffeList = [
    CoffeModel(
        id: 1,
        thumbnail: AppImages.other.coffe,
        name: 'Cappucino',
        price: 10,
        ratings: 3,
        size: 'S',
        quantity: 2,
        isFavorite: false),
    CoffeModel(
        id: 2,
        thumbnail: AppImages.other.coffe,
        name: 'Espresso',
        price: 10,
        ratings: 5,
        size: 'M',
        quantity: 1,
        isFavorite: false),
    CoffeModel(
        id: 3,
        thumbnail: AppImages.other.tea1,
        name: 'Americano',
        price: 10,
        ratings: 4,
        size: 'L',
        quantity: 4,
        isFavorite: false),
    CoffeModel(
        id: 4,
        thumbnail: AppImages.other.tea2,
        name: 'Chai',
        price: 10,
        ratings: 5,
        size: 'S',
        quantity: 3,
        isFavorite: false),
    CoffeModel(
        id: 5,
        thumbnail: AppImages.other.tea3,
        name: 'Cappucino',
        price: 10,
        ratings: 3,
        size: 'S',
        quantity: 2,
        isFavorite: false),
    CoffeModel(
        id: 6,
        thumbnail: AppImages.other.tea4,
        name: 'Espresso',
        price: 10,
        ratings: 5,
        size: 'M',
        quantity: 1,
        isFavorite: false),
    CoffeModel(
        id: 7,
        thumbnail: AppImages.other.tea5,
        name: 'Americano',
        price: 10,
        ratings: 4,
        size: 'L',
        quantity: 4,
        isFavorite: false),
    CoffeModel(
        id: 8,
        thumbnail: AppImages.other.tea6,
        name: 'Chai',
        price: 10,
        ratings: 5,
        size: 'S',
        quantity: 3,
        isFavorite: false),
  ];
}
