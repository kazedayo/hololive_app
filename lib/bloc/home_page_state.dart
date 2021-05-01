import 'package:equatable/equatable.dart';
import 'package:hololive_app/models/live_api_response/live_api_response.dart';

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
