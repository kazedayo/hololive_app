part of 'home_page_bloc.dart';

abstract class HomePageState extends Equatable {
  const HomePageState();

  @override
  List<Object> get props => [];
}

class HomePageInit extends HomePageState {}

class HomePageLoading extends HomePageState {}

class HomePageLoaded extends HomePageState {
  final List<StreamVideoItem> liveList;
  final List<StreamVideoItem> upcomingList;
  final UpcomingFilter filter;

  const HomePageLoaded({
    required this.liveList,
    required this.upcomingList,
    this.filter = UpcomingFilter.day,
  });

  HomePageLoaded copyWith({
    List<StreamVideoItem>? liveList,
    List<StreamVideoItem>? upcomingList,
    UpcomingFilter? filter,
  }) =>
      HomePageLoaded(
        liveList: liveList ?? this.liveList,
        upcomingList: upcomingList ?? this.upcomingList,
        filter: filter ?? this.filter,
      );

  @override
  List<Object> get props => [liveList, upcomingList, filter];
}

class HomePageError extends HomePageState {}
