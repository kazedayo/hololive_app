import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:hololive_app/models/live_api_response/live_api_response.dart';
import 'package:hololive_app/models/stream_video_item/stream_video_item.dart';
import 'package:hololive_app/repository/home_page_repository.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final HomePageRepository repository;
  final Box<String> notiBox = Hive.box('notiBox');

  HomePageBloc({required this.repository}) : super(HomePageInit()) {
    on<RequestLiveList>(_onRequestLiveList);
    on<UpdateFilter>(_onUpdateFilter);
  }

  FutureOr<void> _onRequestLiveList(
      RequestLiveList event, Emitter<HomePageState> emit) async {
    emit(HomePageLoading());
    try {
      final LiveApiResponse response =
          await repository.getSchedule(filter: event.filter);
      final live = await compute(sortLiveList, response.live);
      final upcoming = await compute(sortUpcomingList, response.upcoming);
      for (final StreamVideoItem e in live) {
        notiBox.delete(e.ytVideoKey);
      }
      emit(HomePageLoaded(
          liveList: live, upcomingList: upcoming, filter: event.filter));
    } catch (e) {
      emit(HomePageError());
    }
  }

  FutureOr<void> _onUpdateFilter(
      UpdateFilter event, Emitter<HomePageState> emit) async {
    if (state is HomePageLoaded) {
      emit((state as HomePageLoaded).copyWith(filter: event.filter));
      add(RequestLiveList(filter: event.filter));
    }
  }
}

List<StreamVideoItem> sortLiveList(List<StreamVideoItem> list) => list
  ..sort((a, b) =>
      (b.liveStart ?? DateTime.now()).compareTo(a.liveStart ?? DateTime.now()));

List<StreamVideoItem> sortUpcomingList(List<StreamVideoItem> list) => list
  ..sort((a, b) => (a.liveSchedule ?? DateTime.now())
      .compareTo(b.liveSchedule ?? DateTime.now()));
