// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream_video_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StreamVideoItem _$$_StreamVideoItemFromJson(Map<String, dynamic> json) =>
    _$_StreamVideoItem(
      id: json['id'] as String,
      liveStart: json['start_scheduled'] == null
          ? null
          : DateTime.parse(json['start_scheduled'] as String),
      liveEnd: json['live_end'] == null
          ? null
          : DateTime.parse(json['live_end'] as String),
      liveSchedule: json['live_schedule'] == null
          ? null
          : DateTime.parse(json['live_schedule'] as String),
      liveViewers: json['live_viewers'] as int?,
      channel: Channel.fromJson(json['channel'] as Map<String, dynamic>),
      status: json['status'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_StreamVideoItemToJson(_$_StreamVideoItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'start_scheduled': instance.liveStart?.toIso8601String(),
      'live_end': instance.liveEnd?.toIso8601String(),
      'live_schedule': instance.liveSchedule?.toIso8601String(),
      'live_viewers': instance.liveViewers,
      'channel': instance.channel,
      'status': instance.status,
      'title': instance.title,
    };
