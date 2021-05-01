// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'live_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LiveApiResponse _$LiveApiResponseFromJson(Map<String, dynamic> json) {
  return _LiveApiResponse.fromJson(json);
}

/// @nodoc
class _$LiveApiResponseTearOff {
  const _$LiveApiResponseTearOff();

  _LiveApiResponse call(
      {required bool cached,
      List<StreamVideoItem>? ended,
      List<StreamVideoItem>? live,
      List<StreamVideoItem>? upcoming}) {
    return _LiveApiResponse(
      cached: cached,
      ended: ended,
      live: live,
      upcoming: upcoming,
    );
  }

  LiveApiResponse fromJson(Map<String, Object> json) {
    return LiveApiResponse.fromJson(json);
  }
}

/// @nodoc
const $LiveApiResponse = _$LiveApiResponseTearOff();

/// @nodoc
mixin _$LiveApiResponse {
  bool get cached => throw _privateConstructorUsedError;
  List<StreamVideoItem>? get ended => throw _privateConstructorUsedError;
  List<StreamVideoItem>? get live => throw _privateConstructorUsedError;
  List<StreamVideoItem>? get upcoming => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LiveApiResponseCopyWith<LiveApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LiveApiResponseCopyWith<$Res> {
  factory $LiveApiResponseCopyWith(
          LiveApiResponse value, $Res Function(LiveApiResponse) then) =
      _$LiveApiResponseCopyWithImpl<$Res>;
  $Res call(
      {bool cached,
      List<StreamVideoItem>? ended,
      List<StreamVideoItem>? live,
      List<StreamVideoItem>? upcoming});
}

/// @nodoc
class _$LiveApiResponseCopyWithImpl<$Res>
    implements $LiveApiResponseCopyWith<$Res> {
  _$LiveApiResponseCopyWithImpl(this._value, this._then);

  final LiveApiResponse _value;
  // ignore: unused_field
  final $Res Function(LiveApiResponse) _then;

  @override
  $Res call({
    Object? cached = freezed,
    Object? ended = freezed,
    Object? live = freezed,
    Object? upcoming = freezed,
  }) {
    return _then(_value.copyWith(
      cached: cached == freezed
          ? _value.cached
          : cached // ignore: cast_nullable_to_non_nullable
              as bool,
      ended: ended == freezed
          ? _value.ended
          : ended // ignore: cast_nullable_to_non_nullable
              as List<StreamVideoItem>?,
      live: live == freezed
          ? _value.live
          : live // ignore: cast_nullable_to_non_nullable
              as List<StreamVideoItem>?,
      upcoming: upcoming == freezed
          ? _value.upcoming
          : upcoming // ignore: cast_nullable_to_non_nullable
              as List<StreamVideoItem>?,
    ));
  }
}

/// @nodoc
abstract class _$LiveApiResponseCopyWith<$Res>
    implements $LiveApiResponseCopyWith<$Res> {
  factory _$LiveApiResponseCopyWith(
          _LiveApiResponse value, $Res Function(_LiveApiResponse) then) =
      __$LiveApiResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool cached,
      List<StreamVideoItem>? ended,
      List<StreamVideoItem>? live,
      List<StreamVideoItem>? upcoming});
}

/// @nodoc
class __$LiveApiResponseCopyWithImpl<$Res>
    extends _$LiveApiResponseCopyWithImpl<$Res>
    implements _$LiveApiResponseCopyWith<$Res> {
  __$LiveApiResponseCopyWithImpl(
      _LiveApiResponse _value, $Res Function(_LiveApiResponse) _then)
      : super(_value, (v) => _then(v as _LiveApiResponse));

  @override
  _LiveApiResponse get _value => super._value as _LiveApiResponse;

  @override
  $Res call({
    Object? cached = freezed,
    Object? ended = freezed,
    Object? live = freezed,
    Object? upcoming = freezed,
  }) {
    return _then(_LiveApiResponse(
      cached: cached == freezed
          ? _value.cached
          : cached // ignore: cast_nullable_to_non_nullable
              as bool,
      ended: ended == freezed
          ? _value.ended
          : ended // ignore: cast_nullable_to_non_nullable
              as List<StreamVideoItem>?,
      live: live == freezed
          ? _value.live
          : live // ignore: cast_nullable_to_non_nullable
              as List<StreamVideoItem>?,
      upcoming: upcoming == freezed
          ? _value.upcoming
          : upcoming // ignore: cast_nullable_to_non_nullable
              as List<StreamVideoItem>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LiveApiResponse implements _LiveApiResponse {
  _$_LiveApiResponse(
      {required this.cached, this.ended, this.live, this.upcoming});

  factory _$_LiveApiResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_LiveApiResponseFromJson(json);

  @override
  final bool cached;
  @override
  final List<StreamVideoItem>? ended;
  @override
  final List<StreamVideoItem>? live;
  @override
  final List<StreamVideoItem>? upcoming;

  @override
  String toString() {
    return 'LiveApiResponse(cached: $cached, ended: $ended, live: $live, upcoming: $upcoming)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LiveApiResponse &&
            (identical(other.cached, cached) ||
                const DeepCollectionEquality().equals(other.cached, cached)) &&
            (identical(other.ended, ended) ||
                const DeepCollectionEquality().equals(other.ended, ended)) &&
            (identical(other.live, live) ||
                const DeepCollectionEquality().equals(other.live, live)) &&
            (identical(other.upcoming, upcoming) ||
                const DeepCollectionEquality()
                    .equals(other.upcoming, upcoming)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cached) ^
      const DeepCollectionEquality().hash(ended) ^
      const DeepCollectionEquality().hash(live) ^
      const DeepCollectionEquality().hash(upcoming);

  @JsonKey(ignore: true)
  @override
  _$LiveApiResponseCopyWith<_LiveApiResponse> get copyWith =>
      __$LiveApiResponseCopyWithImpl<_LiveApiResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_LiveApiResponseToJson(this);
  }
}

abstract class _LiveApiResponse implements LiveApiResponse {
  factory _LiveApiResponse(
      {required bool cached,
      List<StreamVideoItem>? ended,
      List<StreamVideoItem>? live,
      List<StreamVideoItem>? upcoming}) = _$_LiveApiResponse;

  factory _LiveApiResponse.fromJson(Map<String, dynamic> json) =
      _$_LiveApiResponse.fromJson;

  @override
  bool get cached => throw _privateConstructorUsedError;
  @override
  List<StreamVideoItem>? get ended => throw _privateConstructorUsedError;
  @override
  List<StreamVideoItem>? get live => throw _privateConstructorUsedError;
  @override
  List<StreamVideoItem>? get upcoming => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$LiveApiResponseCopyWith<_LiveApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
