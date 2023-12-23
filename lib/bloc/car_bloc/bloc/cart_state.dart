// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'cart_bloc.dart';

@immutable
sealed class CartState {}

final class CartInitial extends CartState {}

class CartLoaded extends CartState {
  final List<CoffeModel> cartList;
  CartLoaded({
    required this.cartList,
  });
}

class CartLoading extends CartState {}

class CartError extends CartState {
  final String error;
  CartError({
    required this.error,
  });
}
