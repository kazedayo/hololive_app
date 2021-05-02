import 'package:hololive_app/api/holotools_api.dart';
import 'package:hololive_app/models/live_api_response/live_api_response.dart';
import 'package:hololive_app/models/stream_video_item/stream_video_item.dart';

class HomePageRepository {
  final _api = HolotoolsApi();

  Future<LiveApiResponse> getList() async => await _api.getLive();

  Future<List<StreamVideoItem>> getLiveList() async {
    LiveApiResponse response = await _api.getLive();
    return response.live!
      ..sort((a, b) => a.live_start!.compareTo(b.live_start!));
  }

  Future<List<StreamVideoItem>> getUpcomingList() async {
    LiveApiResponse response = await _api.getLive();
    return response.upcoming!
      ..sort((a, b) => a.live_schedule!.compareTo(b.live_schedule!));
  }
}
