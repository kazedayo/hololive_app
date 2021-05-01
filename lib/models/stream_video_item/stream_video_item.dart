import 'package:freezed_annotation/freezed_annotation.dart';

part 'stream_video_item.freezed.dart';
part 'stream_video_item.g.dart';

@freezed
class StreamVideoItem with _$StreamVideoItem {
  factory StreamVideoItem({
    required int id,
    DateTime? live_start,
    DateTime? live_end,
    DateTime? live_schedule,
    int? live_viewers,
    String? status,
    required String title,
    required String yt_video_key,
  }) = _StreamVideoItem;

  factory StreamVideoItem.fromJson(Map<String, dynamic> json) =>
      _$StreamVideoItemFromJson(json);
}
