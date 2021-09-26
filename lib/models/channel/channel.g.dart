// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Channel _$$_ChannelFromJson(Map<String, dynamic> json) => _$_Channel(
      id: json['id'] as int,
      ytChannelId: json['yt_channel_id'] as String,
      name: json['name'] as String,
      photo: json['photo'] as String,
      twitterLink: json['twitter_link'] as String,
      subscriberCount: json['subscriber_count'] as int,
    );

Map<String, dynamic> _$$_ChannelToJson(_$_Channel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'yt_channel_id': instance.ytChannelId,
      'name': instance.name,
      'photo': instance.photo,
      'twitter_link': instance.twitterLink,
      'subscriber_count': instance.subscriberCount,
    };
