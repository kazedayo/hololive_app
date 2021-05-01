import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hololive_app/models/stream_video_item/stream_video_item.dart';

part 'live_api_response.freezed.dart';
part 'live_api_response.g.dart';

@freezed
class LiveApiResponse with _$LiveApiResponse {
  factory LiveApiResponse(
      {required bool cached,
      List<StreamVideoItem>? ended,
      List<StreamVideoItem>? live,
      List<StreamVideoItem>? upcoming}) = _LiveApiResponse;

  factory LiveApiResponse.fromJson(Map<String, dynamic> json) =>
      _$LiveApiResponseFromJson(json);
}
