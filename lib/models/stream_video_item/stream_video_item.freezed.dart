// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'stream_video_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StreamVideoItem _$StreamVideoItemFromJson(Map<String, dynamic> json) {
  return _StreamVideoItem.fromJson(json);
}

/// @nodoc
class _$StreamVideoItemTearOff {
  const _$StreamVideoItemTearOff();

  _StreamVideoItem call(
      {required int id,
      @JsonKey(name: "live_start") DateTime? liveStart,
      @JsonKey(name: "live_end") DateTime? liveEnd,
      @JsonKey(name: "live_schedule") DateTime? liveSchedule,
      @JsonKey(name: "live_viewers") int? liveViewers,
      required Channel channel,
      String? status,
      required String title,
      @JsonKey(name: "yt_video_key") required String ytVideoKey}) {
    return _StreamVideoItem(
      id: id,
      liveStart: liveStart,
      liveEnd: liveEnd,
      liveSchedule: liveSchedule,
      liveViewers: liveViewers,
      channel: channel,
      status: status,
      title: title,
      ytVideoKey: ytVideoKey,
    );
  }

  StreamVideoItem fromJson(Map<String, Object> json) {
    return StreamVideoItem.fromJson(json);
  }
}

/// @nodoc
const $StreamVideoItem = _$StreamVideoItemTearOff();

/// @nodoc
mixin _$StreamVideoItem {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "live_start")
  DateTime? get liveStart => throw _privateConstructorUsedError;
  @JsonKey(name: "live_end")
  DateTime? get liveEnd => throw _privateConstructorUsedError;
  @JsonKey(name: "live_schedule")
  DateTime? get liveSchedule => throw _privateConstructorUsedError;
  @JsonKey(name: "live_viewers")
  int? get liveViewers => throw _privateConstructorUsedError;
  Channel get channel => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "yt_video_key")
  String get ytVideoKey => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StreamVideoItemCopyWith<StreamVideoItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StreamVideoItemCopyWith<$Res> {
  factory $StreamVideoItemCopyWith(
          StreamVideoItem value, $Res Function(StreamVideoItem) then) =
      _$StreamVideoItemCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: "live_start") DateTime? liveStart,
      @JsonKey(name: "live_end") DateTime? liveEnd,
      @JsonKey(name: "live_schedule") DateTime? liveSchedule,
      @JsonKey(name: "live_viewers") int? liveViewers,
      Channel channel,
      String? status,
      String title,
      @JsonKey(name: "yt_video_key") String ytVideoKey});

  $ChannelCopyWith<$Res> get channel;
}

/// @nodoc
class _$StreamVideoItemCopyWithImpl<$Res>
    implements $StreamVideoItemCopyWith<$Res> {
  _$StreamVideoItemCopyWithImpl(this._value, this._then);

  final StreamVideoItem _value;
  // ignore: unused_field
  final $Res Function(StreamVideoItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? liveStart = freezed,
    Object? liveEnd = freezed,
    Object? liveSchedule = freezed,
    Object? liveViewers = freezed,
    Object? channel = freezed,
    Object? status = freezed,
    Object? title = freezed,
    Object? ytVideoKey = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      liveStart: liveStart == freezed
          ? _value.liveStart
          : liveStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      liveEnd: liveEnd == freezed
          ? _value.liveEnd
          : liveEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      liveSchedule: liveSchedule == freezed
          ? _value.liveSchedule
          : liveSchedule // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      liveViewers: liveViewers == freezed
          ? _value.liveViewers
          : liveViewers // ignore: cast_nullable_to_non_nullable
              as int?,
      channel: channel == freezed
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as Channel,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      ytVideoKey: ytVideoKey == freezed
          ? _value.ytVideoKey
          : ytVideoKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $ChannelCopyWith<$Res> get channel {
    return $ChannelCopyWith<$Res>(_value.channel, (value) {
      return _then(_value.copyWith(channel: value));
    });
  }
}

/// @nodoc
abstract class _$StreamVideoItemCopyWith<$Res>
    implements $StreamVideoItemCopyWith<$Res> {
  factory _$StreamVideoItemCopyWith(
          _StreamVideoItem value, $Res Function(_StreamVideoItem) then) =
      __$StreamVideoItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: "live_start") DateTime? liveStart,
      @JsonKey(name: "live_end") DateTime? liveEnd,
      @JsonKey(name: "live_schedule") DateTime? liveSchedule,
      @JsonKey(name: "live_viewers") int? liveViewers,
      Channel channel,
      String? status,
      String title,
      @JsonKey(name: "yt_video_key") String ytVideoKey});

  @override
  $ChannelCopyWith<$Res> get channel;
}

/// @nodoc
class __$StreamVideoItemCopyWithImpl<$Res>
    extends _$StreamVideoItemCopyWithImpl<$Res>
    implements _$StreamVideoItemCopyWith<$Res> {
  __$StreamVideoItemCopyWithImpl(
      _StreamVideoItem _value, $Res Function(_StreamVideoItem) _then)
      : super(_value, (v) => _then(v as _StreamVideoItem));

  @override
  _StreamVideoItem get _value => super._value as _StreamVideoItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? liveStart = freezed,
    Object? liveEnd = freezed,
    Object? liveSchedule = freezed,
    Object? liveViewers = freezed,
    Object? channel = freezed,
    Object? status = freezed,
    Object? title = freezed,
    Object? ytVideoKey = freezed,
  }) {
    return _then(_StreamVideoItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      liveStart: liveStart == freezed
          ? _value.liveStart
          : liveStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      liveEnd: liveEnd == freezed
          ? _value.liveEnd
          : liveEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      liveSchedule: liveSchedule == freezed
          ? _value.liveSchedule
          : liveSchedule // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      liveViewers: liveViewers == freezed
          ? _value.liveViewers
          : liveViewers // ignore: cast_nullable_to_non_nullable
              as int?,
      channel: channel == freezed
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as Channel,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      ytVideoKey: ytVideoKey == freezed
          ? _value.ytVideoKey
          : ytVideoKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StreamVideoItem implements _StreamVideoItem {
  _$_StreamVideoItem(
      {required this.id,
      @JsonKey(name: "live_start") this.liveStart,
      @JsonKey(name: "live_end") this.liveEnd,
      @JsonKey(name: "live_schedule") this.liveSchedule,
      @JsonKey(name: "live_viewers") this.liveViewers,
      required this.channel,
      this.status,
      required this.title,
      @JsonKey(name: "yt_video_key") required this.ytVideoKey});

  factory _$_StreamVideoItem.fromJson(Map<String, dynamic> json) =>
      _$$_StreamVideoItemFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: "live_start")
  final DateTime? liveStart;
  @override
  @JsonKey(name: "live_end")
  final DateTime? liveEnd;
  @override
  @JsonKey(name: "live_schedule")
  final DateTime? liveSchedule;
  @override
  @JsonKey(name: "live_viewers")
  final int? liveViewers;
  @override
  final Channel channel;
  @override
  final String? status;
  @override
  final String title;
  @override
  @JsonKey(name: "yt_video_key")
  final String ytVideoKey;

  @override
  String toString() {
    return 'StreamVideoItem(id: $id, liveStart: $liveStart, liveEnd: $liveEnd, liveSchedule: $liveSchedule, liveViewers: $liveViewers, channel: $channel, status: $status, title: $title, ytVideoKey: $ytVideoKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StreamVideoItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.liveStart, liveStart) ||
                const DeepCollectionEquality()
                    .equals(other.liveStart, liveStart)) &&
            (identical(other.liveEnd, liveEnd) ||
                const DeepCollectionEquality()
                    .equals(other.liveEnd, liveEnd)) &&
            (identical(other.liveSchedule, liveSchedule) ||
                const DeepCollectionEquality()
                    .equals(other.liveSchedule, liveSchedule)) &&
            (identical(other.liveViewers, liveViewers) ||
                const DeepCollectionEquality()
                    .equals(other.liveViewers, liveViewers)) &&
            (identical(other.channel, channel) ||
                const DeepCollectionEquality()
                    .equals(other.channel, channel)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.ytVideoKey, ytVideoKey) ||
                const DeepCollectionEquality()
                    .equals(other.ytVideoKey, ytVideoKey)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(liveStart) ^
      const DeepCollectionEquality().hash(liveEnd) ^
      const DeepCollectionEquality().hash(liveSchedule) ^
      const DeepCollectionEquality().hash(liveViewers) ^
      const DeepCollectionEquality().hash(channel) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(ytVideoKey);

  @JsonKey(ignore: true)
  @override
  _$StreamVideoItemCopyWith<_StreamVideoItem> get copyWith =>
      __$StreamVideoItemCopyWithImpl<_StreamVideoItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StreamVideoItemToJson(this);
  }
}

abstract class _StreamVideoItem implements StreamVideoItem {
  factory _StreamVideoItem(
          {required int id,
          @JsonKey(name: "live_start") DateTime? liveStart,
          @JsonKey(name: "live_end") DateTime? liveEnd,
          @JsonKey(name: "live_schedule") DateTime? liveSchedule,
          @JsonKey(name: "live_viewers") int? liveViewers,
          required Channel channel,
          String? status,
          required String title,
          @JsonKey(name: "yt_video_key") required String ytVideoKey}) =
      _$_StreamVideoItem;

  factory _StreamVideoItem.fromJson(Map<String, dynamic> json) =
      _$_StreamVideoItem.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "live_start")
  DateTime? get liveStart => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "live_end")
  DateTime? get liveEnd => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "live_schedule")
  DateTime? get liveSchedule => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "live_viewers")
  int? get liveViewers => throw _privateConstructorUsedError;
  @override
  Channel get channel => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: "yt_video_key")
  String get ytVideoKey => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StreamVideoItemCopyWith<_StreamVideoItem> get copyWith =>
      throw _privateConstructorUsedError;
}
