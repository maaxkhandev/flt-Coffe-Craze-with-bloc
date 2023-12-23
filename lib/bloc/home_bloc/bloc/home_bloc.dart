// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:coffe_craze/config/app_data.dart';
import 'package:coffe_craze/data/models/coffe_model.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final List<CoffeModel> _coffeList = [...AppData.coffeList];
  HomeBloc() : super(HomeInitial()) {
    on<LoadCoffeListEvent>(loadCoffeListEventMethod);
  }

  Future<void> loadCoffeListEventMethod(
      LoadCoffeListEvent event, Emitter<HomeState> emit) async {
    emit(HomeLoading());
    await Future.delayed(const Duration(seconds: 2));
    emit(HomeLoaded(coffeList: _coffeList));
  }
}
