// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppSettingsTearOff {
  const _$AppSettingsTearOff();

  _AppSettings call(
      {required bool isDarkMode, required ListDisplayMode listDisplayMode}) {
    return _AppSettings(
      isDarkMode: isDarkMode,
      listDisplayMode: listDisplayMode,
    );
  }
}

/// @nodoc
const $AppSettings = _$AppSettingsTearOff();

/// @nodoc
mixin _$AppSettings {
  bool get isDarkMode => throw _privateConstructorUsedError;
  ListDisplayMode get listDisplayMode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppSettingsCopyWith<AppSettings> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppSettingsCopyWith<$Res> {
  factory $AppSettingsCopyWith(
          AppSettings value, $Res Function(AppSettings) then) =
      _$AppSettingsCopyWithImpl<$Res>;
  $Res call({bool isDarkMode, ListDisplayMode listDisplayMode});
}

/// @nodoc
class _$AppSettingsCopyWithImpl<$Res> implements $AppSettingsCopyWith<$Res> {
  _$AppSettingsCopyWithImpl(this._value, this._then);

  final AppSettings _value;
  // ignore: unused_field
  final $Res Function(AppSettings) _then;

  @override
  $Res call({
    Object? isDarkMode = freezed,
    Object? listDisplayMode = freezed,
  }) {
    return _then(_value.copyWith(
      isDarkMode: isDarkMode == freezed
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      listDisplayMode: listDisplayMode == freezed
          ? _value.listDisplayMode
          : listDisplayMode // ignore: cast_nullable_to_non_nullable
              as ListDisplayMode,
    ));
  }
}

/// @nodoc
abstract class _$AppSettingsCopyWith<$Res>
    implements $AppSettingsCopyWith<$Res> {
  factory _$AppSettingsCopyWith(
          _AppSettings value, $Res Function(_AppSettings) then) =
      __$AppSettingsCopyWithImpl<$Res>;
  @override
  $Res call({bool isDarkMode, ListDisplayMode listDisplayMode});
}

/// @nodoc
class __$AppSettingsCopyWithImpl<$Res> extends _$AppSettingsCopyWithImpl<$Res>
    implements _$AppSettingsCopyWith<$Res> {
  __$AppSettingsCopyWithImpl(
      _AppSettings _value, $Res Function(_AppSettings) _then)
      : super(_value, (v) => _then(v as _AppSettings));

  @override
  _AppSettings get _value => super._value as _AppSettings;

  @override
  $Res call({
    Object? isDarkMode = freezed,
    Object? listDisplayMode = freezed,
  }) {
    return _then(_AppSettings(
      isDarkMode: isDarkMode == freezed
          ? _value.isDarkMode
          : isDarkMode // ignore: cast_nullable_to_non_nullable
              as bool,
      listDisplayMode: listDisplayMode == freezed
          ? _value.listDisplayMode
          : listDisplayMode // ignore: cast_nullable_to_non_nullable
              as ListDisplayMode,
    ));
  }
}

/// @nodoc

class _$_AppSettings implements _AppSettings {
  _$_AppSettings({required this.isDarkMode, required this.listDisplayMode});

  @override
  final bool isDarkMode;
  @override
  final ListDisplayMode listDisplayMode;

  @override
  String toString() {
    return 'AppSettings(isDarkMode: $isDarkMode, listDisplayMode: $listDisplayMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppSettings &&
            const DeepCollectionEquality()
                .equals(other.isDarkMode, isDarkMode) &&
            const DeepCollectionEquality()
                .equals(other.listDisplayMode, listDisplayMode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isDarkMode),
      const DeepCollectionEquality().hash(listDisplayMode));

  @JsonKey(ignore: true)
  @override
  _$AppSettingsCopyWith<_AppSettings> get copyWith =>
      __$AppSettingsCopyWithImpl<_AppSettings>(this, _$identity);
}

abstract class _AppSettings implements AppSettings {
  factory _AppSettings(
      {required bool isDarkMode,
      required ListDisplayMode listDisplayMode}) = _$_AppSettings;

  @override
  bool get isDarkMode;
  @override
  ListDisplayMode get listDisplayMode;
  @override
  @JsonKey(ignore: true)
  _$AppSettingsCopyWith<_AppSettings> get copyWith =>
      throw _privateConstructorUsedError;
}
