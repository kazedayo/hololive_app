// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'channel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Channel _$ChannelFromJson(Map<String, dynamic> json) {
  return _Channel.fromJson(json);
}

/// @nodoc
class _$ChannelTearOff {
  const _$ChannelTearOff();

  _Channel call(
      {required int id,
      @JsonKey(name: "yt_channel_id") required String ytChannelId,
      required String name,
      required String photo,
      @JsonKey(name: "twitter_link") required String twitterLink,
      @JsonKey(name: "subscriber_count") required int subscriberCount}) {
    return _Channel(
      id: id,
      ytChannelId: ytChannelId,
      name: name,
      photo: photo,
      twitterLink: twitterLink,
      subscriberCount: subscriberCount,
    );
  }

  Channel fromJson(Map<String, Object> json) {
    return Channel.fromJson(json);
  }
}

/// @nodoc
const $Channel = _$ChannelTearOff();

/// @nodoc
mixin _$Channel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "yt_channel_id")
  String get ytChannelId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
  @JsonKey(name: "twitter_link")
  String get twitterLink => throw _privateConstructorUsedError;
  @JsonKey(name: "subscriber_count")
  int get subscriberCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChannelCopyWith<Channel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelCopyWith<$Res> {
  factory $ChannelCopyWith(Channel value, $Res Function(Channel) then) =
      _$ChannelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: "yt_channel_id") String ytChannelId,
      String name,
      String photo,
      @JsonKey(name: "twitter_link") String twitterLink,
      @JsonKey(name: "subscriber_count") int subscriberCount});
}

/// @nodoc
class _$ChannelCopyWithImpl<$Res> implements $ChannelCopyWith<$Res> {
  _$ChannelCopyWithImpl(this._value, this._then);

  final Channel _value;
  // ignore: unused_field
  final $Res Function(Channel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? ytChannelId = freezed,
    Object? name = freezed,
    Object? photo = freezed,
    Object? twitterLink = freezed,
    Object? subscriberCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ytChannelId: ytChannelId == freezed
          ? _value.ytChannelId
          : ytChannelId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      twitterLink: twitterLink == freezed
          ? _value.twitterLink
          : twitterLink // ignore: cast_nullable_to_non_nullable
              as String,
      subscriberCount: subscriberCount == freezed
          ? _value.subscriberCount
          : subscriberCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ChannelCopyWith<$Res> implements $ChannelCopyWith<$Res> {
  factory _$ChannelCopyWith(_Channel value, $Res Function(_Channel) then) =
      __$ChannelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: "yt_channel_id") String ytChannelId,
      String name,
      String photo,
      @JsonKey(name: "twitter_link") String twitterLink,
      @JsonKey(name: "subscriber_count") int subscriberCount});
}

/// @nodoc
class __$ChannelCopyWithImpl<$Res> extends _$ChannelCopyWithImpl<$Res>
    implements _$ChannelCopyWith<$Res> {
  __$ChannelCopyWithImpl(_Channel _value, $Res Function(_Channel) _then)
      : super(_value, (v) => _then(v as _Channel));

  @override
  _Channel get _value => super._value as _Channel;

  @override
  $Res call({
    Object? id = freezed,
    Object? ytChannelId = freezed,
    Object? name = freezed,
    Object? photo = freezed,
    Object? twitterLink = freezed,
    Object? subscriberCount = freezed,
  }) {
    return _then(_Channel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      ytChannelId: ytChannelId == freezed
          ? _value.ytChannelId
          : ytChannelId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      twitterLink: twitterLink == freezed
          ? _value.twitterLink
          : twitterLink // ignore: cast_nullable_to_non_nullable
              as String,
      subscriberCount: subscriberCount == freezed
          ? _value.subscriberCount
          : subscriberCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Channel implements _Channel {
  _$_Channel(
      {required this.id,
      @JsonKey(name: "yt_channel_id") required this.ytChannelId,
      required this.name,
      required this.photo,
      @JsonKey(name: "twitter_link") required this.twitterLink,
      @JsonKey(name: "subscriber_count") required this.subscriberCount});

  factory _$_Channel.fromJson(Map<String, dynamic> json) =>
      _$$_ChannelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "yt_channel_id")
  final String ytChannelId;
  @override
  final String name;
  @override
  final String photo;
  @override
  @JsonKey(name: "twitter_link")
  final String twitterLink;
  @override
  @JsonKey(name: "subscriber_count")
  final int subscriberCount;

  @override
  String toString() {
    return 'Channel(id: $id, ytChannelId: $ytChannelId, name: $name, photo: $photo, twitterLink: $twitterLink, subscriberCount: $subscriberCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Channel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.ytChannelId, ytChannelId) ||
                const DeepCollectionEquality()
                    .equals(other.ytChannelId, ytChannelId)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.twitterLink, twitterLink) ||
                const DeepCollectionEquality()
                    .equals(other.twitterLink, twitterLink)) &&
            (identical(other.subscriberCount, subscriberCount) ||
                const DeepCollectionEquality()
                    .equals(other.subscriberCount, subscriberCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(ytChannelId) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(twitterLink) ^
      const DeepCollectionEquality().hash(subscriberCount);

  @JsonKey(ignore: true)
  @override
  _$ChannelCopyWith<_Channel> get copyWith =>
      __$ChannelCopyWithImpl<_Channel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChannelToJson(this);
  }
}

abstract class _Channel implements Channel {
  factory _Channel(
          {required int id,
          @JsonKey(name: "yt_channel_id") required String ytChannelId,
          required String name,
          required String photo,
          @JsonKey(name: "twitter_link") required String twitterLink,
          @JsonKey(name: "subscriber_count") required int subscriberCount}) =
      _$_Channel;

  factory _Channel.fromJson(Map<String, dynamic> json) = _$_Channel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "yt_channel_id")
  String get ytChannelId => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get photo => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "twitter_link")
  String get twitterLink => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "subscriber_count")
  int get subscriberCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChannelCopyWith<_Channel> get copyWith =>
      throw _privateConstructorUsedError;
}
