part of 'home_page_bloc.dart';

abstract class HomePageState extends Equatable {
  HomePageState();

  @override
  List<Object> get props => [];
}

class HomePageInit extends HomePageState {}

class HomePageLoading extends HomePageState {}

class HomePageLoaded extends HomePageState {
  final LiveApiResponse apiResponse;

  HomePageLoaded({required this.apiResponse});

  @override
  List<Object> get props => [apiResponse];
}

class HomePageError extends HomePageState {}
