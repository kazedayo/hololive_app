import 'package:bloc/bloc.dart';
import 'package:hololive_app/bloc/home_page_event.dart';
import 'package:hololive_app/bloc/home_page_state.dart';
import 'package:hololive_app/repository/home_page_repository.dart';

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
