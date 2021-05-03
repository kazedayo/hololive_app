part of 'home_page_bloc.dart';

abstract class HomePageEvent extends Equatable {
  const HomePageEvent();

  @override
  List<Object?> get props => [];
}

class RequestLiveList extends HomePageEvent {
  final UpcomingFilter filter;

  const RequestLiveList({this.filter = UpcomingFilter.day});

  @override
  List<Object?> get props => [filter];
}

class UpdateFilter extends HomePageEvent {
  final UpcomingFilter filter;

  const UpdateFilter({required this.filter});

  @override
  List<Object> get props => [filter];
}

enum UpcomingFilter { hour, day, week }
