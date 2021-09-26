// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel.freezed.dart';
part 'channel.g.dart';

@freezed
class Channel with _$Channel {
  factory Channel({
    required int id,
    @JsonKey(name: "yt_channel_id") required String ytChannelId,
    required String name,
    required String photo,
    @JsonKey(name: "twitter_link") required String twitterLink,
    @JsonKey(name: "subscriber_count") required int subscriberCount,
  }) = _Channel;

  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);
}
