// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LiveApiResponse _$_$_LiveApiResponseFromJson(Map<String, dynamic> json) {
  return _$_LiveApiResponse(
    cached: json['cached'] as bool,
    ended: (json['ended'] as List<dynamic>?)
        ?.map((e) => StreamVideoItem.fromJson(e as Map<String, dynamic>))
        .toList(),
    live: (json['live'] as List<dynamic>?)
        ?.map((e) => StreamVideoItem.fromJson(e as Map<String, dynamic>))
        .toList(),
    upcoming: (json['upcoming'] as List<dynamic>?)
        ?.map((e) => StreamVideoItem.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_LiveApiResponseToJson(_$_LiveApiResponse instance) =>
    <String, dynamic>{
      'cached': instance.cached,
      'ended': instance.ended,
      'live': instance.live,
      'upcoming': instance.upcoming,
    };
