// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Channel _$_$_ChannelFromJson(Map<String, dynamic> json) {
  return _$_Channel(
    id: json['id'] as int,
    yt_channel_id: json['yt_channel_id'] as String,
    name: json['name'] as String,
    photo: json['photo'] as String,
    twitter_link: json['twitter_link'] as String,
    subscriber_count: json['subscriber_count'] as int,
  );
}

Map<String, dynamic> _$_$_ChannelToJson(_$_Channel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'yt_channel_id': instance.yt_channel_id,
      'name': instance.name,
      'photo': instance.photo,
      'twitter_link': instance.twitter_link,
      'subscriber_count': instance.subscriber_count,
    };
