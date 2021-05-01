import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:hololive_app/models/live_api_response/live_api_response.dart';
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
        final response = await repository.getList();
        yield HomePageLoaded(apiResponse: response);
      } catch (e) {
        yield HomePageError();
      }
    }
  }
}
