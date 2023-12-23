part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeLoaded extends HomeState {
  final List<CoffeModel> coffeList;

  HomeLoaded({required this.coffeList});
}

final class HomeError extends HomeState {
  final String error;

  HomeError({required this.error});
}
