// Copyright (c) 2021 Kin Wa Lam
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings.freezed.dart';

@freezed
class AppSettings with _$AppSettings {
  factory AppSettings(
      {required bool isDarkMode,
      required ListDisplayMode listDisplayMode}) = _AppSettings;
}

enum ListDisplayMode { compact, card }
