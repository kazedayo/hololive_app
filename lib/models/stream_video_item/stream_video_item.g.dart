// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream_video_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StreamVideoItem _$$_StreamVideoItemFromJson(Map<String, dynamic> json) =>
    _$_StreamVideoItem(
      id: json['id'] as int,
      liveStart: json['live_start'] == null
          ? null
          : DateTime.parse(json['live_start'] as String),
      liveEnd: json['live_end'] == null
          ? null
          : DateTime.parse(json['live_end'] as String),
      liveSchedule: json['live_schedule'] == null
          ? null
          : DateTime.parse(json['live_schedule'] as String),
      liveViewers: json['live_viewers'] as int?,
      channel: Channel.fromJson(json['channel'] as Map<String, dynamic>),
      status: json['status'] as String?,
      title: json['title'] as String,
      ytVideoKey: json['yt_video_key'] as String,
    );

Map<String, dynamic> _$$_StreamVideoItemToJson(_$_StreamVideoItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'live_start': instance.liveStart?.toIso8601String(),
      'live_end': instance.liveEnd?.toIso8601String(),
      'live_schedule': instance.liveSchedule?.toIso8601String(),
      'live_viewers': instance.liveViewers,
      'channel': instance.channel,
      'status': instance.status,
      'title': instance.title,
      'yt_video_key': instance.ytVideoKey,
    };
