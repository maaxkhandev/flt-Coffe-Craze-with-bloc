part of 'cart_bloc.dart';

@immutable
sealed class CartEvent {}

class AddToCartEvent extends CartEvent {
  final CoffeModel coffeModel;
  AddToCartEvent({required this.coffeModel});
}

class RemoveFromCartEvent extends CartEvent {
  final CoffeModel coffeModel;
  RemoveFromCartEvent({required this.coffeModel});
}
