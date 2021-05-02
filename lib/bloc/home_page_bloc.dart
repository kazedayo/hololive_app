import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
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
        final live = await repository.getLiveList();
        final upcoming = await repository.getUpcomingList();
        yield HomePageLoaded(liveList: live, upcomingList: upcoming);
      } catch (e) {
        yield HomePageError();
      }
    }
  }
}
