import 'package:hololive_app/api/holotools_api.dart';
import 'package:hololive_app/models/live_api_response/live_api_response.dart';

class HomePageRepository {
  final _api = HolotoolsApi();

  Future<LiveApiResponse> getList() async => await _api.getLive();
}
