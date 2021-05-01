import 'package:equatable/equatable.dart';

abstract class HomePageEvent extends Equatable {
  HomePageEvent();

  @override
  List<Object> get props => [];
}

class RequestLiveList extends HomePageEvent {}
