// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hololive_app/models/channel/channel.dart';

part 'stream_video_item.freezed.dart';
part 'stream_video_item.g.dart';

@freezed
class StreamVideoItem with _$StreamVideoItem {
  factory StreamVideoItem({
    required String id,
    @JsonKey(name: "start_actual") DateTime? liveStart,
    @JsonKey(name: "end_actual") DateTime? liveEnd,
    @JsonKey(name: "start_scheduled") DateTime? liveSchedule,
    @JsonKey(name: "live_viewers") int? liveViewers,
    required Channel channel,
    required String status,
    required String title,
  }) = _StreamVideoItem;

  factory StreamVideoItem.fromJson(Map<String, dynamic> json) =>
      _$StreamVideoItemFromJson(json);
}
