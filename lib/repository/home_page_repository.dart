import 'package:hololive_app/api/holotools_api.dart';
import 'package:hololive_app/bloc/home_page_bloc.dart';
import 'package:hololive_app/models/live_api_response/live_api_response.dart';

class HomePageRepository {
  final _api = HolotoolsApi();

  Future<LiveApiResponse> getSchedule({required UpcomingFilter filter}) async =>
      _api.getLive(filter: filter);
}
