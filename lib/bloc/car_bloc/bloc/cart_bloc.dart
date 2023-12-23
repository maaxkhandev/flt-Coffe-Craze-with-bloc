// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:coffe_craze/data/models/coffe_model.dart';
import 'package:meta/meta.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  final List<CoffeModel> _cartList = [];
  CartBloc() : super(CartInitial()) {
    on<AddToCartEvent>(_addToCartkEventToState);
    on<RemoveFromCartEvent>(_removeFromCartkEventToState);
  }
  Future<void> _addToCartkEventToState(
      AddToCartEvent event, Emitter<CartState> emit) async {
    emit(CartLoading());
    if (_cartList.contains(event.coffeModel)) {
      _cartList.remove(event.coffeModel);
    } else {
      _cartList.add(event.coffeModel);
    }
    emit(CartLoaded(cartList: List.from(_cartList)));
  }

  Future<void> _removeFromCartkEventToState(
      RemoveFromCartEvent event, Emitter<CartState> emit) async {
    emit(CartLoading());
    _cartList.remove(event.coffeModel);
    emit(CartLoaded(cartList: List.from(_cartList)));
  }

  List<CoffeModel> getCartList() {
    return List.from(_cartList);
  }
}
