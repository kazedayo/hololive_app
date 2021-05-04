// Copyright (c) 2021 winsonlam
//
// This software is released under the MIT License.
// https://opensource.org/licenses/MIT

import 'package:bloc/bloc.dart';
import 'package:hololive_app/models/stream_video_item/stream_video_item.dart';
import 'package:hololive_app/service/notification_service.dart';
import 'package:hive/hive.dart';

class VideoCardCubit extends Cubit<bool> {
  final StreamVideoItem item;
  final Box<String> notiBox;

  VideoCardCubit(this.item, this.notiBox)
      : super(notiBox.containsKey(item.yt_video_key));

  void toggleNotification() {
    if (state) {
      NotificationService().cancelScheduledNotification(item: item);
      notiBox.delete(item.yt_video_key);
    } else {
      NotificationService().scheduleNotification(item: item);
      notiBox.put(item.yt_video_key, item.yt_video_key);
    }
    emit(!state);
  }
}
