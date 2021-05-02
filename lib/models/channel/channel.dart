import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel.freezed.dart';
part 'channel.g.dart';

@freezed
class Channel with _$Channel {
  factory Channel({
    required int id,
    required String yt_channel_id,
    required String name,
    required String photo,
    required String twitter_link,
    required int subscriber_count,
  }) = _Channel;

  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);
}
