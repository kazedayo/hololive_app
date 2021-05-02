// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

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
      required String yt_channel_id,
      required String name,
      required String photo,
      required String twitter_link,
      required int subscriber_count}) {
    return _Channel(
      id: id,
      yt_channel_id: yt_channel_id,
      name: name,
      photo: photo,
      twitter_link: twitter_link,
      subscriber_count: subscriber_count,
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
  String get yt_channel_id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get photo => throw _privateConstructorUsedError;
  String get twitter_link => throw _privateConstructorUsedError;
  int get subscriber_count => throw _privateConstructorUsedError;

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
      String yt_channel_id,
      String name,
      String photo,
      String twitter_link,
      int subscriber_count});
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
    Object? yt_channel_id = freezed,
    Object? name = freezed,
    Object? photo = freezed,
    Object? twitter_link = freezed,
    Object? subscriber_count = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      yt_channel_id: yt_channel_id == freezed
          ? _value.yt_channel_id
          : yt_channel_id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      twitter_link: twitter_link == freezed
          ? _value.twitter_link
          : twitter_link // ignore: cast_nullable_to_non_nullable
              as String,
      subscriber_count: subscriber_count == freezed
          ? _value.subscriber_count
          : subscriber_count // ignore: cast_nullable_to_non_nullable
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
      String yt_channel_id,
      String name,
      String photo,
      String twitter_link,
      int subscriber_count});
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
    Object? yt_channel_id = freezed,
    Object? name = freezed,
    Object? photo = freezed,
    Object? twitter_link = freezed,
    Object? subscriber_count = freezed,
  }) {
    return _then(_Channel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      yt_channel_id: yt_channel_id == freezed
          ? _value.yt_channel_id
          : yt_channel_id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photo: photo == freezed
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      twitter_link: twitter_link == freezed
          ? _value.twitter_link
          : twitter_link // ignore: cast_nullable_to_non_nullable
              as String,
      subscriber_count: subscriber_count == freezed
          ? _value.subscriber_count
          : subscriber_count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Channel implements _Channel {
  _$_Channel(
      {required this.id,
      required this.yt_channel_id,
      required this.name,
      required this.photo,
      required this.twitter_link,
      required this.subscriber_count});

  factory _$_Channel.fromJson(Map<String, dynamic> json) =>
      _$_$_ChannelFromJson(json);

  @override
  final int id;
  @override
  final String yt_channel_id;
  @override
  final String name;
  @override
  final String photo;
  @override
  final String twitter_link;
  @override
  final int subscriber_count;

  @override
  String toString() {
    return 'Channel(id: $id, yt_channel_id: $yt_channel_id, name: $name, photo: $photo, twitter_link: $twitter_link, subscriber_count: $subscriber_count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Channel &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.yt_channel_id, yt_channel_id) ||
                const DeepCollectionEquality()
                    .equals(other.yt_channel_id, yt_channel_id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.photo, photo) ||
                const DeepCollectionEquality().equals(other.photo, photo)) &&
            (identical(other.twitter_link, twitter_link) ||
                const DeepCollectionEquality()
                    .equals(other.twitter_link, twitter_link)) &&
            (identical(other.subscriber_count, subscriber_count) ||
                const DeepCollectionEquality()
                    .equals(other.subscriber_count, subscriber_count)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(yt_channel_id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(photo) ^
      const DeepCollectionEquality().hash(twitter_link) ^
      const DeepCollectionEquality().hash(subscriber_count);

  @JsonKey(ignore: true)
  @override
  _$ChannelCopyWith<_Channel> get copyWith =>
      __$ChannelCopyWithImpl<_Channel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChannelToJson(this);
  }
}

abstract class _Channel implements Channel {
  factory _Channel(
      {required int id,
      required String yt_channel_id,
      required String name,
      required String photo,
      required String twitter_link,
      required int subscriber_count}) = _$_Channel;

  factory _Channel.fromJson(Map<String, dynamic> json) = _$_Channel.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get yt_channel_id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get photo => throw _privateConstructorUsedError;
  @override
  String get twitter_link => throw _privateConstructorUsedError;
  @override
  int get subscriber_count => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChannelCopyWith<_Channel> get copyWith =>
      throw _privateConstructorUsedError;
}
