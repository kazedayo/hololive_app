import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hololive_app/models/live_api_response/live_api_response.dart';
import 'package:hololive_app/models/stream_video_item/stream_video_item.dart';
import 'package:hololive_app/repository/home_page_repository.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  final HomePageRepository repository;

  HomePageBloc({required this.repository}) : super(HomePageInit());

  @override
  Stream<HomePageState> mapEventToState(HomePageEvent event) async* {
    if (event is RequestLiveList) {
      try {
        final LiveApiResponse response =
            await repository.getSchedule(filter: event.filter);
        final live = response.live
          ..sort((a, b) => (b.live_start ?? DateTime.now())
              .compareTo(a.live_start ?? DateTime.now()));
        final upcoming = response.upcoming
          ..sort((a, b) => (a.live_schedule ?? DateTime.now())
              .compareTo(b.live_schedule ?? DateTime.now()));
        yield HomePageLoaded(
            liveList: live, upcomingList: upcoming, filter: event.filter);
      } catch (e) {
        yield HomePageError();
      }
    } else if (event is UpdateFilter) {
      if (state is HomePageLoaded) {
        yield (state as HomePageLoaded).copyWith(filter: event.filter);
        add(RequestLiveList(filter: event.filter));
      }
    }
  }
}
