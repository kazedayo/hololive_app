// Copyright (c) 2021 Kin Wa Lam
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class AppThemeCubit extends Cubit<bool> {
  AppThemeCubit()
      : super(SchedulerBinding.instance!.window.platformBrightness ==
            Brightness.dark);

  void toggle() => emit(!state);
}
