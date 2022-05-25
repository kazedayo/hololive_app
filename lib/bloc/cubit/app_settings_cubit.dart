// Copyright (c) 2021 Kin Wa Lam
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:hololive_app/models/app_settings/app_settings.dart';

class AppSettingsCubit extends Cubit<AppSettings> {
  AppSettingsCubit()
      : super(AppSettings(
            isDarkMode: SchedulerBinding.instance.window.platformBrightness ==
                Brightness.dark,
            listDisplayMode: ListDisplayMode.card));

  void toggleDarkMode() => emit(state.copyWith(isDarkMode: !state.isDarkMode));

  void changeListMode({required ListDisplayMode mode}) =>
      emit(state.copyWith(listDisplayMode: mode));
}
