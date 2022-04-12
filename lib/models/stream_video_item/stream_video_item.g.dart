// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stream_video_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StreamVideoItem _$$_StreamVideoItemFromJson(Map<String, dynamic> json) =>
    _$_StreamVideoItem(
      id: json['id'] as String,
      liveStart: json['start_actual'] == null
          ? null
          : DateTime.parse(json['start_actual'] as String),
      liveEnd: json['end_actual'] == null
          ? null
          : DateTime.parse(json['end_actual'] as String),
      liveSchedule: json['start_scheduled'] == null
          ? null
          : DateTime.parse(json['start_scheduled'] as String),
      liveViewers: json['live_viewers'] as int?,
      channel: Channel.fromJson(json['channel'] as Map<String, dynamic>),
      status: json['status'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$_StreamVideoItemToJson(_$_StreamVideoItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'start_actual': instance.liveStart?.toIso8601String(),
      'end_actual': instance.liveEnd?.toIso8601String(),
      'start_scheduled': instance.liveSchedule?.toIso8601String(),
      'live_viewers': instance.liveViewers,
      'channel': instance.channel,
      'status': instance.status,
      'title': instance.title,
    };
