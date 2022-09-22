part of 'home_cubit.dart';

abstract class HomeCubitState {}

class HomeInitial extends HomeCubitState {}

class HomeStateIsComplate extends HomeCubitState {
  HomeStateIsComplate({required this.listPrducts});
  final List<ProductsModel>  listPrducts;
   HomeStateIsComplate copyWith(
      {List<ProductsModel>? nowPlayingData}) {
    return HomeStateIsComplate(listPrducts: 
         nowPlayingData ?? this.listPrducts,
        );
  }
  List<Object?> get props => [listPrducts];
}

class HomeStateIsFailed extends HomeCubitState {
  HomeStateIsFailed({required this.showMessage});
  final String showMessage;
}

class HomeSteteInProgress extends HomeCubitState {}
