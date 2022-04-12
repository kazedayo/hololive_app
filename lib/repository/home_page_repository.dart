import 'package:hololive_app/api/holodex_api.dart';
import 'package:hololive_app/bloc/home_page_bloc.dart';
import 'package:hololive_app/models/stream_video_item/stream_video_item.dart';

class HomePageRepository {
  final _api = HolotoolsApi();

  Future<List<StreamVideoItem>> getSchedule(
          {required UpcomingFilter filter}) async =>
      _api.getLive(filter: filter);
}
