part of 'home_page_bloc.dart';

abstract class HomePageEvent extends Equatable {
  HomePageEvent();

  @override
  List<Object> get props => [];
}

class RequestLiveList extends HomePageEvent {}
