// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream_video_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StreamVideoItem _$_$_StreamVideoItemFromJson(Map<String, dynamic> json) {
  return _$_StreamVideoItem(
    id: json['id'] as int,
    live_start: json['live_start'] == null
        ? null
        : DateTime.parse(json['live_start'] as String),
    live_end: json['live_end'] == null
        ? null
        : DateTime.parse(json['live_end'] as String),
    live_schedule: json['live_schedule'] == null
        ? null
        : DateTime.parse(json['live_schedule'] as String),
    live_viewers: json['live_viewers'] as int?,
    channel: Channel.fromJson(json['channel'] as Map<String, dynamic>),
    status: json['status'] as String?,
    title: json['title'] as String,
    yt_video_key: json['yt_video_key'] as String,
  );
}

Map<String, dynamic> _$_$_StreamVideoItemToJson(_$_StreamVideoItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'live_start': instance.live_start?.toIso8601String(),
      'live_end': instance.live_end?.toIso8601String(),
      'live_schedule': instance.live_schedule?.toIso8601String(),
      'live_viewers': instance.live_viewers,
      'channel': instance.channel,
      'status': instance.status,
      'title': instance.title,
      'yt_video_key': instance.yt_video_key,
    };
