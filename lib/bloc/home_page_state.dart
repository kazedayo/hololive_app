part of 'home_page_bloc.dart';

abstract class HomePageState extends Equatable {
  HomePageState();

  @override
  List<Object> get props => [];
}

class HomePageInit extends HomePageState {}

class HomePageLoading extends HomePageState {}

class HomePageLoaded extends HomePageState {
  final List<StreamVideoItem> liveList;
  final List<StreamVideoItem> upcomingList;

  HomePageLoaded({
    required this.liveList,
    required this.upcomingList,
  });

  @override
  List<Object> get props => [liveList, upcomingList];
}

class HomePageError extends HomePageState {}
